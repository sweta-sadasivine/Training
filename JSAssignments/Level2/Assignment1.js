let arr=[1, 2, 3, 4, 5, 6],
    sum=0,
    avg=0;

arr.forEach(item =>{
    sum +=item;
})

avg = sum/arr.length;
console.log(avg);