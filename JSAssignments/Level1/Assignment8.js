let arr = [1, -2, 3, 4, -5, -6, -7, 0],
    arr2 = [];

arr.forEach(item => {
    (item > 0) ? arr2.push(item):"";
});

console.log(arr2);