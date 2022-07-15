// Break

Integer num = 5;

While (num < 10){
    
    if(num == 7){
        break;
    }

    System.debug(num);
    num++;
}


// Continue

for(Integer i = 1; i < 10; i++){
    if(i == 5){
        Continue;
    }
    System.debug(i);
}




// EXAMPLES

/*
A store sells accessories for parties and special events. It prices its balloons based on their colors as there are colors that are more popular, and others that are harder to find, or more expensive to buy from its suppliers. A default price is applied for the rest of the colors. How can this scenario be translated using only one type of control flow in Apex?
*/

String color = 'Blue';
Decimal price;

Switch on color {
    when 'Blue'{
        price = 10;
        System.debug(price);
    }
    when 'Red'{
        price = 5;
        System.debug(price);
    }
    when 'Yellow'{
        price = 3;
        System.debug(price);
    }
    when else{
        price = 2;
        System.debug(price);
    }
}

System.debug(TestApexClass.addMethod(6));

System.debug(TestApexClass.helloResponse('Hello'));


Dog myDog = new Dog();
myDog.dogName = 'Puppy';
myDog.dogAge = 2;
myDog.dogDisplay();


Dog myDog1 = new Dog();
myDog1.dogName = 'Clever';
myDog1.dogAge = 4;
myDog1.dogDisplay();


Dog myDog2 = new Dog();
myDog2.dogName = 'Tree';
myDog2.dogAge = 10;
myDog2.dogDisplay();


Dog.staticDog();

// ....................... //

List<String> names = new List<String>();
names.add('test1');
names.add('test2');
names.add('test3');
names.add('test4');

List<String> newNames = new List<String>();
for(String listItem : names){
    String nItem = listItem + 'z';
    newNames.add(nItem);
}

System.debug(newNames);

// ....................... //

