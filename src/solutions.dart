void main() {
  print('hello, world!');
  //  1
  int findFirstLeft(List<int> arr, int target) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == target) {
        return i;
      }
    }
    return -1;
  }

  print(findFirstLeft([1, 2, 3, 4, 5, 6, 7], 3)); //  3

  //  2
  int findFirstRight(List<int> arr, int target) {
    for (int i = arr.length - 1; i > 0; i--) {
      if (arr[i] == target) {
        return i;
      }
    }
    return -1;
  }

  print(findFirstRight([1, 2, 3, 4, 5, 3, 6, 7], 3)); //  5

  // 3
  bool isPalindrome(String s) {
    return s.toLowerCase() == s.toLowerCase().split('').reversed.join('');
  }

  print(isPalindrome('Ana')); //  true
  print(isPalindrome('Mark')); //  false
}
