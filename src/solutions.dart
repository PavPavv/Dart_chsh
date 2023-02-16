import 'dart:math';

void main() {
  // print('hello, world!');
  //  1
  int findFirstLeft(List<int> arr, int target) {
    for (int i = 0; i < arr.length; i++) {
      if (arr[i] == target) {
        return i;
      }
    }
    return -1;
  }

  // print(findFirstLeft([1, 2, 3, 4, 5, 6, 7], 3)); //  3

  //  2
  int findFirstRight(List<int> arr, int target) {
    for (int i = arr.length - 1; i > 0; i--) {
      if (arr[i] == target) {
        return i;
      }
    }
    return -1;
  }

  // print(findFirstRight([1, 2, 3, 4, 5, 3, 6, 7], 3)); //  5

  // 3
  bool isPalindrome(String s) {
    return s.toLowerCase() == s.toLowerCase().split('').reversed.join('');
  }

  // print(isPalindrome('Ana')); //  true
  // print(isPalindrome('Mark')); //  false

  // 4
  String reverseStr(String s) {
    String result = '';
    int i = 0;

    while (i < s.length) {
      i++;
      result += s[s.length - i];
    }
    return result;
  }
  // print(reverseStr('test'));

  // 5
  Iterable<String> findItemByLength(List<String> names, int amount) {
    return names.where((name) => name.length == amount);
  }

  // print(
  //     findItemByLength(['John', 'Jack', 'Dean', 'Pat'], 3));
  // print(findItemByLength(
  //     ['John', 'Mag', 'Jack', 'Dean', 'Pat'], 3));

  // 6
  int countVowels(String str) {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    int counter = 0;
    for (int i = 0; i < str.length; i++) {
      if (vowels.contains(str[i])) {
        counter++;
      }
    }
    return counter;
  }

  // print(countVowels('some')); //  2

  int rangeSum(int start, int end) {
    if (start > end) return -1;
    List<int> arr = [];

    for (int i = start; i <= end; i++) {
      arr.add(i);
    }
    return arr.reduce((value, element) => value + element);
  }

  // print(rangeSum(1, 5));
  // print(rangeSum(5, 1));

  String findMiddleChar(String str) {
    String result = '';
    if (str.length % 2 == 0) {
      int evenMiddle = (str.length / 2).floor();
      result = str[evenMiddle];
    } else {
      int oddMiddle = ((str.length - 1) / 2).floor();
      result = str[oddMiddle];
    }
    return result;
  }

  // print(findMiddleChar('test'));
  // print(findMiddleChar('testing'));
}
