package primes

import "math"

var primes = []int{2}

func Isprime(num int) bool {
  numF := float64(num)
  max := int(math.Sqrt(numF)) + 1
  primesLen := len(primes) - 1
  isPrime := true

  for i := 0; i < primesLen; i++ {
    lastPrime := primes[i]

    if num % lastPrime == 0 {
      isPrime = false
      break
    }

    if lastPrime > max {
      isPrime = true
      break
    }
  }

  if isPrime {
    primes = append(primes, num)
  }

  return isPrime
}
