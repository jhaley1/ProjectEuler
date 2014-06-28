package main

import(
  "fmt"
  "time"
)

func fibonacci() int {
  fibs := []int{1, 2}
  last := 2
  sum := last

  for last < 4000000 {
    fibsLen := len(fibs)
    last = fibs[fibsLen - 1] + fibs[fibsLen - 2]
    fibs = append(fibs, last)

    if last % 2 == 0 {
      sum += last
    }
  }

  return sum
}

func main() {
  s := time.Now()

  for i := 0; i < 10000; i += 1 {
    fibonacci()
  }

  fmt.Println(time.Now().Sub(s))
}
