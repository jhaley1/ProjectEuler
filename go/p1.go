package main

import (
  "fmt"
  "time"
)

func mults() int {
  sum := 0

  for i := 0; i < 1000; i += 1 {
    if i % 3.0 == 0 || i % 5.0 == 0 {
      sum += i
    }
  }

  return sum
}

func main() {
  s := time.Now()

  for i := 0; i < 10000; i += 1 {
    mults()
  }

  fmt.Println(time.Now().Sub(s))
}
