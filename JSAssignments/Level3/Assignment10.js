var x = 2;
var y = 3;
(function(x, y) {
  x = x + y;
  y = x - y;
  x = x - y;
})(x, y);
console.log(x, y);


//Output : 2 3
//Swapping happned for local variables for the function not for the global variable