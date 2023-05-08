function foo() {
    return 
    {
      message: "Hello"  //this is unreachable code
    };
  }
  console.log(foo()); 


  //Output : Undefined
  //Cause function is not returning any thing