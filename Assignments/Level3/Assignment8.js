for (var i = 0; i < 5; i++) {
    console.log(i);
    setTimeout(function() {
      console.log(i);
    }, i );
  }