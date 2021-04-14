// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }
​
// mysteryScoping1()
​
// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//       const x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
//   }
  
// mysteryScoping2()
​
// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }
​
// mysteryScoping3()
​
// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//       let x = 'in block';  
//       console.log(x);
//     }
//     console.log(x);
// }
​
// mysteryScoping4()
​
// function mysteryScoping5() {
//      let x = 'out of block';
//      if (true) {
//        let x = 'in block';  
//        console.log(x);
//      }
//      let x = 'out of block again';
//      console.log(x);
// }
​
// mysteryScoping5()
​
// function madLib(verb, adj, noun) {
//     console.log("We shall "+ verb.toUpperCase() + " the " + adj.toUpperCase()+ " " + noun.toUpperCase()+".");
// }
​
// madLib("pass", "f*cking", "course")
​
​
// function isSubstring(sentence, word){
​
//     words = sentence.split(" ")
​
//     for (let count = 0; count < words.length; count++){
//         return console.log((words[count] == word));
         
//     }
// }
​
// isSubstring("time to program", "time")
​
// isSubstring("Jump for joy", "joys")
​
// function fizzBuzz(arr) {
//     let new_arr = []
//     for (let num = 0; num < arr.length; num++) {
//         if (arr[num] % 3 == 0 && arr[num] % 5 == 0) {
//             continue;
//         }
//         else if (arr[num] % 3 == 0 || arr[num] % 5 == 0){
//             new_arr.push(arr[num]);
//         }
//     }
//     return console.log(new_arr);
// }
// ​
// fizzBuzz([3, 15, 20, 5])

function isPrime(num){
  if(num < 2){
    return console.log(false);
  }
  for(let i =2; i <num; i++){
    if(num % i === 0){
      return console.log(false);
    }
    else
    {
      console.log(true);
    }
  }
}

// isPrime(10)

function sumOfNPrimes (n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }

  return sum;
}
