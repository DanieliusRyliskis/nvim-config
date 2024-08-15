function factorial(n) {
    if (n === 0 || n === 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

// Example of a basic for loop
for (let i = 0; i < 5; i++) {
    console.log(`Factorial of ${i} is ${factorial(i)}`);
}

// Object and array manipulation
const person = {
    firstName: "John",
    lastName: "Doe",
    age: 30,
    hobbies: ["reading", "gaming", "coding"],
    address: {
        city: "New York",
        zip: 10001
    }
};

// Accessing object properties
console.log(`${person.firstName} lives in ${person.address.city}`);

// Adding a method to an object
person.getFullName = function() {
    return `${this.firstName} ${this.lastName}`;
};

// Using the method
console.log(person.getFullName());

// Conditional example
if (person.age >= 18) {
    console.log(`${person.firstName} is an adult.`);
} else {
    console.log(`${person.firstName} is not an adult.`);
}

// Arrow function example
const multiply = (a, b) => a * b;

console.log(`3 multiplied by 4 is ${multiply(3, 4)}`);
