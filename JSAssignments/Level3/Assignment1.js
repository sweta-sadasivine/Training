var x = 1;
function foo() {
  console.log(x); 
  var x = 2;
}
foo();

// Output : Undefined
// For function Foo variable needs to be declared before being used