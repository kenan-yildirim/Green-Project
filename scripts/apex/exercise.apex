//1. Capture first name and Print "Hello <firstName>!" on the debug console.

String firstName = 'Kenny';
System.debug('Hello ' + firstName + '!');


//2. Write a code that can reverse a text and print on the debug log

String beforeReverse = 'Push it to the limit!';
System.debug(beforeReverse.reverse());
beforeReverse.

//3. Capture Company Name in a variable; trim it and change all letters to uppercase, print on debug console

String companyName = '       Sun Company        ';
System.debug(companyName.trim().toUpperCase());

//4. Write a code that can output text char lenght, print on debug console

String exampleText = 'Salesforce is the number one CRM';
System.debug(exampleText.length());

//5. Write a code to calculate two integers, print on debug console

Integer numberOne = 2;
Integer numberTwo = 5;
Integer total = numberOne + numberTwo;
System.debug(total);


//6. Write a code to calculate area of a square, print on debug console. (dimensions can be decimal)

Decimal dimension = 4.2;
Decimal area = dimension * dimension;
System.debug(area);

//7. Write a code to calculate area of a circle, print on debug console (A=PI*r2)

Decimal PI = 3.14;
Decimal r = 5;
Decimal A = PI * r * r;
System.debug(A);

//8. Write a code to calculate age. Use dynamic current date for the current date calculation. Print the age on debug console

Integer year = Date.today().year();
Integer birthDateYear = 1990;
Integer Age = year - birthDateYear;
System.debug(Age); 

//9. Write a code that can provide a random whole number between 1-60 each time run, print number on debug console

System.debug((Math.random()*60).round());

//10. Print out todays date to debug console, format the date so that users can see MM/dd/YYYY format

System.debug(Date.today().format());

//11. Print out today's date and time to debug console, format the date time so that users can see MM/dd/yyyy hh/mm format

System.debug(Datetime.now().format());

//12. Create a date variable and hold 4th of July 2022 as 'Independence Day'. Print date to debug console

Date independenceDay = Date.newInstance(2022, 07, 04);
System.debug(independenceDay.format());

//13. Create a shopping list and add egg, milk, banana to shopping list. Print list to debug console

List<String> shoppingList = new List<String>();
shoppingList.add('egg');
shoppingList.add('milk');
shoppingList.add('Banana');
System.debug(shoppingList);

//14. Remove milk item from the above list and print list again. Use index to find correct item.

List<String> shoppingList = new List<String>();
shoppingList.add('egg');
shoppingList.add('milk');
shoppingList.add('banana');
shoppingList.remove(1);
System.debug(shoppingList);

//15. Create a days list that can only show unique day values. Add same day to list a couple of time and see if it is printing only one in debug console

Set<String> uniqueDays = new Set<String>();
uniqueDays.add('Monday');
uniqueDays.add('Monday');
uniqueDays.add('Monday');
System.debug(uniqueDays);

//16. Remove the unique item from the above list. Confirm empty list on debug console

Set<String> uniqueDays = new Set<String>();
uniqueDays.add('Monday');
uniqueDays.add('Monday');
uniqueDays.add('Monday');
uniqueDays.remove('Monday');
System.debug(uniqueDays);

//17. Create a Map collection to store student number and student name. Add a couple of students. Print on logs. 

Map<String,String> studentList = new Map<String,String>();
studentList.put('S0001', 'Michael');
studentList.put('S0002', 'Ashley');
System.debug(studentList);

//18. Remove a student from the above Map list

Map<String,String> studentList = new Map<String,String>();
studentList.put('S0001', 'Michael');
studentList.put('S0002', 'Ashley');
studentList.remove('S0001');
System.debug(studentList);

//19. Create an Account record with the 'Clarusway' name (sObject). Print account on debug logs

Account newAccount = new Account();
newAccount.Name = 'Clarusway';
System.debug(newAccount);

//20. Create a contact record, assign first and last name

Contact newContact = new Contact();
newContact.FirstName = 'Mike';
newContact.LastName = 'Force';
System.debug(newContact);