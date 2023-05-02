let str = "The quick brown fox jumps over the lazy dog",
    arr = str.split(" "),
    arr2= [];

arr.forEach(item => {
    arr2.push(item.split("").reverse().join(""));
});
console.log(arr2.join(" "));

//WIthout using another array
let count =0;
arr.forEach(item => {
    arr[count] = item.split("").reverse().join("");
    count++;
});

console.log(arr.join(" "));
