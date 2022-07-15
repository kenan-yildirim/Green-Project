// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents



//Primitive Types
//of the Apex

/*Primitive Types
of the Apex. Excape
*/

//Primitive Types

//camelCase variableName
//call any class method by using dot notation
//all unassigned variables returns Null (nothing or absence of data)
//

Blob myBlob;
System.debug(myBlob);


String firstName;
System.debug(firstName);

firstName = 'Kenny';
System.debug(firstName);

firstName = 'John';
System.debug(firstName);

//Calculation of revenue
Decimal revenue;
revenue = 1000;
System.debug(revenue);


String companyName = 'Blue Company';
companyName = 'Red Company';
companyName = 'Green Company';

Date currentDate = Date.today();
System.debug(currentDate);

Date foundationDate = Date.parse('12/12/2001');
System.debug(foundationDate);

Datetime newDateTime = Datetime.now();
System.debug(newDateTime);

//null, True, False
Boolean isChecked = False;
isChecked = True;
System.debug(isChecked);

Time newTime = Time.newInstance(8, 34, 22, 0);
System.debug(newTime);


Integer num = 1;
while (num < 5) {

    if (num == 3) {
        Continue;
    }
    else {
        System.debug('Print number ' + num);
        num++;   
    }
}

for (Integer i = 1; i < 5; i++) {
    if (i == 3) {
        Break;
    }
    else {
        System.debug(i);   
    }
}