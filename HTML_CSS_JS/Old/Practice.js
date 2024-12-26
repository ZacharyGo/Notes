/* const vs var vs let 
    var   - The scope is global when a var variable is declared outside a function. 
            This means that any variable that is declared with var outside a function block is available for use in the whole window.
          - Function scoped when it is declared within a function. This means that it is available and can be accessed only within that function.
          - can be re-declared and updated
          - declarations are hoisted to the top
    let   - now preferred for variable declaration. It's no surprise as it comes as an improvement to var declarations. 
            It also solves the problem with var that we just covered. Let's consider why this is so.
          - a variable declared in a block with let  is only available for use within that block
          - can be updated but not re-declared unless re-delcared in different scope
          - declarations are hoisted to the top
    const - maintain constant values. const declarations share some similarities with let declarations
          - declarations can only be accessed within the block they were declared.
          - cannot be updated or re-declared
          - declarations are hoisted to the top but are not initialized.
    var declarations are globally scoped or function scoped while let and const are block scoped.
    var variables can be updated and re-declared within its scope; let variables can be updated but not re-declared; 
        const variables can neither be updated nor re-declared.
    They are all hoisted to the top of their scope. But while var variables are initialized with undefined, 
        let and const variables are not initialized.
    While var and let can be declared without being initialized, const must be initialized during declaration.
*/


/* Arrays */
// Add more than one item at a time

var x = ['a'];
x.push('b', 'c');
// x = ['a', 'b', 'c']
// Add items to the beginning of an array

var x = ['c', 'd'];
x.unshift('a', 'b');
// x = ['a', 'b', 'c', 'd']


// Add the contents of one array to another
var x = ['a', 'b', 'c'];
var y = ['d', 'e', 'f'];
x.push.apply(x, y);
// x = ['a', 'b', 'c', 'd', 'e', 'f']
// y = ['d', 'e', 'f']  (remains unchanged)

// Create a new array from the contents of two arrays

var x = ['a', 'b', 'c'];
var y = ['d', 'e', 'f'];
var z = x.concat(y);
// x = ['a', 'b', 'c']  (remains unchanged)
// y = ['d', 'e', 'f']  (remains unchanged)
// z = ['a', 'b', 'c', 'd', 'e', 'f']

function testArrays() {
    const cars = [
        "Saab",
        "Volvo",
        "BMW"
    ];

    cars[0] = "Toyota";
    console.log(cars)

    var list = [
        { date: '12/1/2011', reading: 3, id: 20055 },
        { date: '13/1/2011', reading: 5, id: 20053 },
        { date: '14/1/2011', reading: 6, id: 45652 }
    ];
    console.log(list)

}

class Car {
    constructor(name, year) {
        this.name = name;
        this.year = year;
    }
    age() {
        let date = new Date();
        console.log(date.getFullYear());
    console.log(this.year);

        return date.getFullYear() - this.year;
    }
}

function testClass() {
    var carList = [];
    const myCar = new Car("Ford", 2014);
    carList.push(myCar);
    document.getElementById("demo").innerHTML = "My car is " + myCar.age() + " years old.";
    console.log(carList);
}
