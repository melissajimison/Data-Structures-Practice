class Stack {
  constructor() {
     this.items = [];
  }
  push(element){
    this.items.push(element);
  }

  pop() {
    if (this.items.length == 0)
      return "Underflow";
    return this.items.pop();
  }

  isEmpty() {
    return this.items.length == 0;
  }
}

function parenthesisValidator(string) {
  stack = new Stack
  let isBalance = true
  let chars = string.split('')
  let i = 0
  while (i < string.length && isBalance == true) {
    console.log(isBalance);
    let char = chars[i]
    if (char === '(') {
      stack.push(char)
    } else {
      if (stack.isEmpty == true) {
        console.log(stack);
        isBalance = false
      } else {
        stack.pop()
      }
    }
    i++;
    console.log(stack);

    console.log("=========");
  }
  return stack.isEmpty() == true && isBalance == true
}

console.log(parenthesisValidator("(()(())())"));
// console.log(parenthesisValidator("()"));
// console.log(parenthesisValidator("(()"));
// console.log(parenthesisValidator("())"));
// console.log(parenthesisValidator(")())"));
