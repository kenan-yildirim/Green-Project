global class MyFutureClass {

    @future
    static void myMethod(String a, Integer i) {
      System.debug('Method called with: ' + a + ' and ' + i);
      // Perform long-running code
    }
   }


puv


public class QueueableExample implements Queueable {
 
    public void execute(QueueableContext context) {
        Account acc = new Account(Name='Clarusway');
        Insert acc;        
    }
}

System.enqueueJob(new QueueableExample());




public class MySchedule implements schedulable {
    public void execute(SchedulableContext SC) {
        Account a = new Account(Name='Clarusway');
        insert a;
    }
}

System.Schedule('CRON SET','0 0 12 * * ?',new MySchedule());


global class batchAccountUpdate implements Database.Batchable<sobject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        String query = 'SELECT Id, Name FROM Account';
        return Database.getQueryLocator(query);
    }
      
    global void execute(Database.BatchableContext bc, List<account> scope) {
        for(Account a : scope) {
            if(a.Name == 'Clarusway'){
               a.Name = a.Name + ' Updated';  
            } 
        }
        update scope;
    } 
      
    global void finish(Database.BatchableContext bc){
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        List<String> emails = new List<String>{'test@email.com'};
        mail.setToAddresses(emails);
        mail.setReplyTo('info@company.com');
        mail.setSenderDisplayName('Account Batch Processing');
        mail.setSubject('Account Batch Process Completed');
        mail.setPlainTextBody('Account Batch Process has completed');
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }
}


Database.executeBatch(new batchAccountUpdate());














global class MyBatchClass implements Database.Batchable<sObject> {
    global (Database.QueryLocator | Iterable<sObject>) start(Database.BatchableContext bc) {
        // collect the batches of records or objects to be passed to execute
    }
    global void execute(Database.BatchableContext bc, List<P> records){
        // process each batch of records
    }    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    
}








