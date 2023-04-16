let str = "wertyuiklkjhfdfghjayauyeggjywerfah",
    str2= "The quick brown fox jumps over the lazy dog";
    str2=str;
let set = new Set (str2.replaceAll(/\W|\d/ig,"").toLowerCase().split(""));
console.log(str2);

console.log((set.size ==26) ? "It's a pangram" : "It's not a pangram");