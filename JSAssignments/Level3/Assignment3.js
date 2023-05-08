var x = 10;
function foo() {
  console.log(x);  
}
function bar() {
  var x = 20; 
  foo();
}
bar();

// Output : 10
//Scope of variable declared in function bar is only inside the function and it is not being passed to function foo.
//For function foo, the local variable of bar is not in scope so the global one will be called