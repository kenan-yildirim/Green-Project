Trigger Example1 on Account (Before Insert) {
    for(Account a : Trigger.new){
        if (a.industry == 'Banking'){
            a.ownership = 'Private';
    }
}


Trigger Example2 on Account (Before Insert) {
    List<Opportunity> opty = new List<Opportunity>();
    For(Account a : Trigger.new){
        If(a.Industry == 'Education' && a.Rating == 'Warm'){
            Opportunity op = new Opportunity();
            op.name = a.name;
            op.Type = 'New Customer';
            op.CloseDate = system.today()+15;
            op.StageName = 'Prospecting';
            opty.add(op);
        }
    }
    insert opty;
}



Trigger Example3 Contact (Before Insert) {
    For(Contact c : Trigger.new){
        If (c.Account == null){
            c.addError('Enter account name');
    }
    }
}




Trigger Example4 on Account (Before Insert) {
    List<Opportunity> opty = new List<Opportunity>();
    for(Account a : Trigger.new){
        If (a.Industry == 'Education' && a.Rating == 'Warm'){
            Opportunity op = new Opportunity();
            op.name = a.name;
            op.Type = 'New Customer';
            op.CloseDate = System.Today()+15;
            op.StageName = 'Prospecting';
            op.AccountId = a.Id;
            opty.add(op);
        }
    }   
    insert opty;
}





Trigger Example5 on Account (After Insert) {
List<AccountTeamMember> atm1 = new List<AccountTeamMember>();
User u = [Select Name from User where Name='<your name here>'];
    For(Account a : Trigger.new){
        if(a.AnnualRevenue > 500000){
        AccountTeamMember atm = new AccountTeamMember();
        atm.userid = u.id;
        atm.AccountId = a.id;
        atm.TeamMemberRole = 'Lead Qualifier';
        atm.AccountAccessLevel = 'All';
        atm1.add(atm);
        }
    }
    insert atm1;
}



Trigger Example6 on Account (After Insert) {
    User u = [Select name from user where name = '<your name here>'];
    List<Task> t1 = new List<Task>();
    for(Account a : Trigger.new){
        if (a.Type == 'prospect'){
            Task t = new Task();
            t.whatid = a.id;
            t.Priority = 'normal';
            t.Status = 'not started';
            t.OwnerId = u.Id;
            t1.add(t);
        }
    }
    insert t1;
}


trigger Example7 on Account (After Insert) {
    User u = [select name, email from user where name = '<your name here>'];
    List<Task> t1 = new List<Task>();
    for(Account a : Trigger.new){
        if (a.Type == 'prospect'){
            Task t = new Task();
            t.whatid = a.id;
            t.Priority = 'normal';
            t.Status = 'not started';
            t.subject = 'cal to him with in 7 days';
            t.OwnerId = u.Id;
            t1.add(t);
            Messaging.SingleEmailMessage msg = new Messaging.SingleEmailMessage();
            List<String> cc = new List<String>{u.Email};
            msg.setToAddresses(cc);
            string body = 'dear customer';
            msg.setplaintextbody(body);
            msg.setsubject('test email');
            Messaging.Email[] emails = new Messaging.Email[]{msg};
            Messaging.sendEmail(emails);
        }
    }
    insert t1;
}


Trigger Example8 on Lead (After Insert) {
    for (Lead lee : Trigger.new){
        Messaging.SingleEmailMessage msg=new Messaging.SingleEmailMessage();
        String mail = UserInfo.getUserEmail();
        List<String> options = new List<String>{mail,lee.Email};
        msg.SetToAddresses(options);
        String body = 'dear customer';
        msg.setplaintextbody(body);
        msg.setsubject('test email');
        Messaging.Email[] emails = new Messaging.Email[]{msg};
        Messaging.sendEmail(emails);
    }
}



Trigger Example9 on Lead (Before Update) {
    for (Lead l : Trigger.new){
        if (l.Industry == 'banking'){
            l.Phone='8978130541';
        }
    }
}


Trigger Example10 on Lead (Before Update) {
    User u = [Select Name,Email from User where Name = '<selected user name here>'];
    List<Task> t1 = new List<Task>();
    for(Lead l : Trigger.new){
        if (l.Industry == 'banking'){
            l.Phone = '8978130541';
            l.OwnerId = u.id;
            }
        Task t = new Task();
        t.subject = 'Take care of sfdc';
        t.OwnerId = u.id;
        t.WhoId = l.id;
        t.Priority = 'normal';
        t.Status = 'not-started';
        insert t;
        messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        List<String> email = new List<String>{u.Email,l.Email};
        msg.setToAddresses(email);
        String body='dear customer';
        msg.setplaintextbody(body);
        msg.setsubject('Take care of sfdc');
        List<Messaging.Email> emails = new List<Messaging.Email>{msg};
        Messaging.sendEmail(emails);
    }
}


Trigger Example11 on Account (Before Update) {
Map<id,Account> oldmap = Trigger.oldMap;
Map<id,Account> newmap = Trigger.newMap;
    for(id key : newmap.keySet()){
      Account ol = oldmap.get(key);
      Account nw = newMap.get(key);
        if (ol.ownership == 'public' && nw.Ownership == 'private'){
            nw.Phone='765536374646';
        }
    }
}


Trigger Example12 on Account (After Update) {
    List<Account> acc = [select name,phone,(select name,otherphone,mobilephone from contacts)from account];
    Map<id,Account> oldmap1=trigger.oldmap;
    Map<id,Account> newmap1=trigger.newmap;
    for(id key : oldmap1.keyset()){
        Account ol = oldmap1.get(key);
        Account nu = newmap1.get(key);
        if(ol.phone != nu.phone){
            for(account a : acc){
                for(contact c : a.contacts){
                    c.OtherPhone = ol.phone;
                    c.MobilePhone = nu.phone;
                    update c;
                }       
            }
        }
    }
}



Trigger Example13 on Account (Before Delete) {
List<Account> acc = [select name,id,(select lastname,id,accountid from contacts)from account where id in : Trigger.old];
Account a1 = [select name,id from account where name='<your name here>'];
    for (Account a : acc){
        for (Contact c : a.contacts){
            c.AccountId = a1.id;
            update c;
        }
    }
}


Trigger Example14 on Contact (After Delete) {
    List<id> ids = new List<id>();
        for(Contact c : Trigger.old){
            if(c.AccountId != null){
                ids.add(c.AccountId);
                list<Contact> con = [select lastname,accountid,id from contact where accountid in : ids];
            if(con.size() == 0){
                Account a = [select name,id from account where id in : ids];
                Delete a;
            }
        }
    }
}


Trigger Example15 on Account (After Undelete) {
    List<Account> acc = [select name,id from account where id in : Trigger.new ];
    for(Account a : acc){
        a.Active__c = 'yes';
        update a;
    }
}

