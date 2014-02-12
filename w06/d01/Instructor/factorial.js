// Here's another example of the recursive factorial with more console logging
// Copy and paste this into the JavaScript console in Chrome!

function factorial(num)
{
    console.log("We are calling the factorial function on: " + num);
    if (num === 1) {
        console.log("The number is now " + num);
        return 1;
    }
    else {
        var factorialOfOneLess = factorial(num - 1);
        console.log("The number is now " + num + " and the factorial of one less than that number is: " + factorialOfOneLess);
        return (num * factorialOfOneLess);
    }
}

factorial(5);