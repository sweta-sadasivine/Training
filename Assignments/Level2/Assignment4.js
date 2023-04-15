let arr = [1,2,3,4,5,6,7,8,9],
    median = 0;

arr.sort((a,b) => a-b);
if(arr.length%2 !== 0) {
    median = arr[Math.floor(arr.length/2)];
}
else {
    median = ( arr[(arr.length/2)-1] + arr[(arr.length/2)] )/2;
}

console.log(median);