global class MyFutureClass {

    @future
    static void myMethod(String a, Integer i) {
      System.debug('Method called with: ' + a + ' and ' + i);
      // Perform long-running code
    }
   }s




   public class QueueableExample implements Queueable {
 
    public void execute(QueueableContext context) {
        Account acc = new Account(Name='Clarusway');
        Insert acc;        
    }
}

System.enqueueJob(new QueueableExample());




public class MySchedule implements schedulable {
    public void execute(SchedulableContext SC) {
        Account a =new Account(Name='Clarusway');
        insert a;
    }
}

System.schedule(new MySchedule());











