// Excape Chars

System.debug('My friend\'s name is Alex!'); // escape char
System.debug('My friend\'s name \nis Alex!'); // new line
System.debug('My friend\'s name \nis \t\tAlex!'); // tab
System.debug('My friend\'s name \nis \t\tAlex!\\'); // back slash


// Kills the iteration and force exit from the loop based on condition
Integer num = 1;
while (num < 5) {
    if (num == 3) {
        Break;
    }
    else {
        System.debug('Number is ' + num);
        num++;
    }
}


// Skips executing related iterations
for (Integer num = 1; num < 5; num++) {
    if (num == 3 || num == 4) {
        Continue;
    }
    else {
        System.debug('Number is ' + num);  
    }
}

Dog myDog1 = new Dog();
myDog1.dogName = 'Mouse';
myDog1.dogAge = 5;
myDog1.displayData();

Dog myDog2 = new Dog();
myDog2.dogName = 'Tom';
myDog2.dogAge = 4;
myDog2.displayData();


System.debug(Calculations.calculateAreaofCircle(4.2));