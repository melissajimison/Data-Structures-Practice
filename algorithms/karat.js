// You are building an educational website and want to create a simple calculator for students to use. The calculator will only allow addition and subtraction of non-negative integers.

// Given an expression string using the "+" and "-" operators like "5+16-2", write a function to find the total.

// Sample input/output:
// calculate("6+9-12")  => 3
// calculate("1+2-3+4-5+6-7") => -2
// calculate("100+200+300") => 600
// calculate("1-2-3-0") => -4
// calculate("255") => 255

// n: length of the input string


var expression1 = "6+9-12"; // = 3

function calculate(exp) {
    var numberPattern = /\d+/g;
    var operatiorPattern = /[+-]/g;

    elems = expression1.match( numberPattern )
    operations = expression1.match( operatiorPattern )


    let total = parseInt(elems[0])
    for (let i =1, j=0; i<=elems.length;j++, i++) {
      if  (operations[j] == '+') {
        total = total + parseInt(elems[i])

      } else if  (operations[j] == '-') {
        total = total - parseInt(elems[i])
      }
  }
    return total

}

console.log(calculate(expression1))
console.log(calculate("1+2-3+4-5+6-7")// => -2
console.log(calculate("100+200+300") //=> 600
console.log(calculate("1-2-3-0")// => -4
console.log(calculate("255") //=> 255
