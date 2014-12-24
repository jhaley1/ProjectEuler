import (
  "fmt"
  "math"
)

func isPalindrome(num int) bool {
  forwards := []int
  backwards := []int


}

func largestPalindromicProduct() int {
  products := []int
  largest := 0

  for num1 := 999; num1 > 900; num1-- {
    for num2 := 999; num2 > num1; num2-- {
      product = num1 * num2
      if product > largest && isPalindrome(product) {
	largest = product
      }
    }
  }

  return largest
}

func main() {
  fmt.Println(largestPalindromicProduct())
}
