var x = 1;
function foo() {
  x = 2;
  console.log(x);
}
foo();
console.log(x);


//Output :
//2
//2
//Cause x is a global variable