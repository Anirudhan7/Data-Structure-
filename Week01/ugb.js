
let i = 0
// while(true){
//   console.log('hi')
//   if(i==10) break; // base condition
//   i++
// }

function recursive(i){
  // console.log('hi')
  if(i==10) return i;
  i++
  let u = recursive(i)
  return u
}

console.log(recursive(i))


function ku(){
  console.log('hi')
}

console.log(ku())