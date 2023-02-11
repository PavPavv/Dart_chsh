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
  Iterable<String> findPersonWithCertainAmountOfLetters(
      List<String> names, int amount) {
    return names.where((name) => name.length == amount);
  }

  // print(
  //     findPersonWithCertainAmountOfLetters(['John', 'Jack', 'Dean', 'Pat'], 3));
  // print(findPersonWithCertainAmountOfLetters(
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

  print(countVowels('some')); //  2
}
