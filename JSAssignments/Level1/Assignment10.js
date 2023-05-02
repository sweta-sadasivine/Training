let arr1 = [1, 2, 3, 4, 5, 6, 7, 8],
    arr= [2, 4, 5, 7, 8],
    arr2= [];

arr.forEach(item => {
    (arr1.indexOf(item) > -1) ? arr2.push(item) : "";
})

console.log(arr2);