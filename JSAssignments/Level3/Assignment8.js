for (var i = 0; i < 5; i++) {
    console.log(i);
    setTimeout(function() {
      console.log(i);
    }, i );
  }

/* Output
0
1
2
3
4
5
5
5
5
5

Since seTimeout is callback function so the for loop will be executed completely and then seTimeout will be called
*/