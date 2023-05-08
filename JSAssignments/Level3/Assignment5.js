console.log(1 + '2' + '2');   //122
console.log(1 + +'2' + '2');  //32    + sign infront of 2 will convert it to a Number, 1st + is for concatination
console.log(1 + -'1' + '2');  //02    - sign infront of 1 will convert it to -1 negative number
console.log(+'1' + '1' + '2');//112   Since there is only one + sign the strings will be concatinated
console.log('A' - 'B' + '2'); //NaN2  - sign infront of B will convert it to number but since it can not be converted to number so we will get NaN for 'A' -'B'
console.log('A' - 'B' + 2);   //NaN   NaN + any number is NaN