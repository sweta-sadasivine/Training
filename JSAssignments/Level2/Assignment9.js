let arr = [1, 5, 6, 4, 3, 2];
let count = 0,
    size = arr.length;

console.log(countInversion(0, size-1, arr));

function countInversion(start, end, array){
    
    if(start < end) {
        
        let mid = Math.floor((end+start)/2);
        count = count + countInversion(start, mid, array);
        count = count + countInversion(mid+1, end, array);
        count = count + mergeInversion(start, end, mid, array);
    }
    return count;
}


function mergeInversion(start, end, mid, array){

    let leftArray = array.slice(start, mid+1),
        rightArray = array.slice(mid+1, end);

    let i=0, j=0, k=start, swaps =0;

    while(i < leftArray.length && j < rightArray.length){
        if(leftArray[i] <= rightArray[j]){
            array[k] = leftArray[i];
            i++;
        }
        else{
            array[k] = rightArray[j];
            swaps = swaps + (mid + 1) - (start + i);
            j++
        }
    }

    while(i < leftArray.length){
        array[k] = leftArray[i];
        i++;
        k++;
    }
    while(j < rightArray.length){
        array[k] = rightArray[j];
        j++;
        k++;
    }
    return swaps;

}
