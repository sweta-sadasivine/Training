let arr = [3,2,4,6,7,21,1,11],
    arrNew = [];

arr.forEach(item => isPrime(item)? arrNew.push(item) : "")
console.log(arrNew);

function isPrime(num) {

    if (num === 1){
        return false;
    }
    for (let i = 2; i < num; i++){
        if (num % i === 0){
            return false;
        }
    }
    return true;
}