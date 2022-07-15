public class Saturday {
	String name;
    Integer num;
    
    public void satMethod(){
        String newNum = String.valueOf(num);
        System.debug('This is ' + name + ' and this is ' + newNum); // issue: I am trying to concatenate string with integer
    } 
    
}