let str = 'peap',
    j = str.length - 1,
    count =0;

for(let i=0; i<= str.length/2; i++){

    (str.charAt(i) === str.charAt(j)) ? count++ : "";
    j--;
}

console.log( (count >= str.length/2) ? "Its a palindrom" : "Its not a palindrom");