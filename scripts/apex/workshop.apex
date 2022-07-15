// 1. Create a funtion that takes a list of strings and prints out each items in the list to the debug console as upper case.

List<String> myList = new List<String>{'test', 'tree', 'car'};

for (String item : myList){
    System.debug(item.toUpperCase());
}

// 2. Create a function that takes a unique number list, iterates over and increases each number by one and stores new numbers in a new list. Print new list in debug console.

Set<Integer> myList = new Set<Integer>{2,3,4,6,7};
Set<Integer> newList = new Set<Integer>();
for(Integer item : myList){
    newList.add(item+1);
}
System.debug(newList);

// 3. Create a function that takes a list of words and capitilizes each words.

List<String> wordList = new List<String>{'word', 'test', 'table'};
List<String> capitilizedList = new List<String>();

for(String item : wordList){
    capitilizedList.add(item.capitalize());
}
System.debug(capitilizedList);

// 4. Create a function that takes a future date and calculates days between future date and current date.

Date td = Date.today();
Date fd = Date.newInstance(2022, 06, 07);

System.debug(td.daysBetween(fd));

// 5. Write a function that takes current date time and returns current day of the week like Monday, Tuesday etc.

Datetime dt = Datetime.now();
System.debug(dt.format('EEEE'));

// 6. Create a program that checks an input word and determines if it is a palindrome (a word, phrase, or sequence that reads the same backward as forward). Write check result to debug logs.

String text = 'nalan'; // input string
String reversedText = text.reverse(); // reversed string
if (text == reversedText){
    System.debug(text + ' is palindrome!');
}
else
{
    System.debug(text + ' is NOT palindrome!');
}

// 7. Write a code to check a list of numbers from 1 to 10 and print out only even numbers to debug console as a list programmatically.

List<Integer> numberList = new List<Integer>{1,2,3,4,5,6,7,8,9,10};
List<Integer> evenNumbers = new List<Integer>();

for(Integer item : numberList){
    if(Math.mod(item, 2) == 0 ){
        evenNumbers.add(item);
    }
}
system.debug(evenNumbers);

// 8. Create a program to check first letter of a user's first name and print out following to the debug console. For 'A', 'B', 'C', 'D' print out 'The first letter is '<letter here>'. If first letter is not A, B, C or D then print out 'The letter is different.'.

String firstName = 'benny';
List<String> letters = firstName.split('');
String firstLetter = letters.get(0);
System.debug(firstLetter);

Switch on firstLetter {
    when 'A', 'a' {
        System.debug('The first letter is \'A\'.');
    }
    when 'B', 'b' {
        System.debug('The first letter is \'B\'.');
    }
    when 'C', 'c' {
        System.debug('The first letter is \'C\'.');
    }
    when 'D', 'd' {
        System.debug('The first letter is \'C\'.');
    }
    when else{
        System.debug('The letter is different.');
    }
}








