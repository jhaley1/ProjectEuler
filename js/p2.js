function evenFibonacciNumbers(limit) {
  var sum      = 0;
  var sequence = [0, 1];

  while( sum < limit ) {
    var lastOne = sequence[sequence.length - 1];
    var lastTwo = sequence[sequence.length - 2]; 
    var nextNum = lastOne + lastTwo;

    sequence.push(nextNum);

    if( nextNum % 2 === 0 ) {
      sum += nextNum;
    }
  }

  return sum;
}

var limit  = 4000000;
var answer = evenFibonacciNumbers(limit);

console.log(answer);
