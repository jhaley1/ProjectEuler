package main

import (
  "fmt"
  "./primes"
)

func largest_prime_factor(num int) int {
  factors := []int{}

  for i := 2; i < (num / 2) + 1; i++ {
    if num % i == 0 {
      factors = append(factors, i)
    }
  }

  factorsLen := len(factors) - 1
  largest := 0

  for j := 2; j < factorsLen; j++ {
    factor := factors[j]
    if primes.Isprime(factor) {
      largest = factor
    }
  }

  fmt.Println(factors)
  return largest
}

func main() {
  // num := 600851475143
  // fmt.Println(largest_prime_factor(num))
  fmt.Println(largest_prime_factor(13195))
}
