console.time('1')
var array = [...Array(10000000)]
console.timeEnd('1')
console.time('2')
var filtered = array.filter(x => x % 13 == 0)
console.timeEnd('2') // for(var i = 0; i<10000000 ; i++){
//   i % 13 == 0 ? array.push(i) : 0;
// }
// console.log(array.length)
