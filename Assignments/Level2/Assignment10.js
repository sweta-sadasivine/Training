let arr = [1,2,2,2,3,3,4,4,4,4,4,5,5,5,6,6,7],
    arrNew = [];

arr.forEach(item => arr.indexOf(item) === arr.lastIndexOf(item) ? "" : arrNew.push(item));
console.log(arrNew);