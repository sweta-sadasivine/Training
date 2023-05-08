console.log((function f(n) { return ((n > 1) ? n * f(n-1) : n) })(3));

//Output : 6
//3 would be passed as parameter to the function and then through recursion 3*2*1