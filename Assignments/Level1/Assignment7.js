let str = 'sweta',
    vowel = ['a', 'e', 'i', 'o', 'u'],
    count = 0;
str.split("").forEach(item => {
    
    (vowel.indexOf(item) === -1) ? "" : ++count
});

console.log(count);