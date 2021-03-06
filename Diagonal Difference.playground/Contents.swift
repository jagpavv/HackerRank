/*
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.

 For example, the square matrix  is shown below:

 1 2 3
 4 5 6
 9 8 9
 The left-to-right diagonal 1+5+9 = 15. The right to left diagonal 3+5+9 = 17. Their absolute difference is |15 - 17| = 2.

 from hackerrank.com
 */

//first try
func diagonalDifference(arr: [[Int]]) -> Int {

  var leftToRight = 0
  var rightToLeft = 0

  for i in 0..<arr.count {
    leftToRight += arr[i][i]
    rightToLeft += arr[i][(arr.count - 1) - i]
  }

  if leftToRight - rightToLeft > 0 {
    return leftToRight - rightToLeft
  } else {
    return rightToLeft - leftToRight
  }
}


// second try
func diagonalDifference2(arr: [[Int]]) -> Int {

  var leftToRight = 0
  var rightToLeft = 0

  for i in 0..<arr.count {
    leftToRight += arr[i][i]
    rightToLeft += arr[i][(arr.count - 1) - i]
  }

  return abs(leftToRight - rightToLeft)
}

