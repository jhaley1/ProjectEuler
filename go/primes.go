package primes

import "math"

var primes = []int{2}

func Isprime(num int) bool {
  num_f := float64(num)
  max := int(math.Sqrt(num_f)) + 1
  primesLen := len(primes) - 1
  is_prime := true

  for i := 0; i < primesLen; i++ {
    last_prime := primes[i]

    if num % last_prime == 0 {
      is_prime = false
      break
    }

    if last_prime > max {
      is_prime = true
      break
    }
  }

  if is_prime {
    primes = append(primes, num)
  }

  return is_prime
}
