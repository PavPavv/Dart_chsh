import 'dart:async';
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

  // 7
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

  // 8
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

  // 9
  squareNumberParts(num number) {
    return int.parse(number
        .toString()
        .split('')
        .map((String strNum) => int.parse(strNum) * int.parse(strNum))
        .join(''));
  }

  // print(squareNumberParts(25)); //  425

  // 10
  String replaceAllFn(String s, String ch) {
    return s.replaceAll('#', '');
  }

  // print(replaceAllFn('te###st', '#')); // 'test'

  // 11
  int findRepeat(List<int> arr) {
    int result = -1;
    final Map<int, int> map = {};

    for (int i = 0; i < arr.length; i++) {
      map[arr[i]] = i;
    }

    for (int number in arr) {
      if (arr.indexOf(number) != map[number]) {
        result = map[number]!;
      }
    }
    return result;
  }

  // print(findRepeat([1, 2, 3, 4, 5, 6, 7, 3, 8, 9]));

  // 12
  List<List<int>> findRepeats(List<int> arr) {
    List<List<int>> result = [];
    final Map<int, int> map = {};

    for (int i = 0; i < arr.length; i++) {
      if (map.containsKey(arr[i])) {
        map[arr[i]] = map[arr[i]]! + 1;
      } else {
        map[arr[i]] = 1;
      }
    }

    map.forEach((key, value) {
      if (value > 1) {
        List<int> foundArr = [];
        for (int i = 0; i < value; i++) {
          foundArr.add(key);
        }
        result.add(foundArr);
      }
    });

    return result;
  }

  // print(findRepeats([1, 2, 3, 4, 5, 6, 7, 3, 8, 9, 5, 10]));

  // 13
  int countRepeatsInRange(List<int> arr, int l, int r, int target) {
    if (l > r) return -1;
    int counter = 0;

    for (int i = l; i < r; i++) {
      if (arr[i] == target) {
        counter++;
      }
    }
    return counter;
  }

  // print(countRepeatsInRange([1, 2, 3, 4, 5, 3, 6, 7, 5, 8, 9, 5], 2, 7, 3));

  // 14  O(n^2-2)
  bool isTargetSum(List<int> arr, int target) {
    for (int i = 0; i < arr.length - 1; i++) {
      for (int j = 1; j < arr.length; j++) {
        if (arr[i] + arr[j] == target) {
          return true;
        }
      }
    }
    return false;
  }

  // print(isTargetSum([1, 2, 3, 4, 5, 6, 7], 5));
  // print(isTargetSum([1, 2, 3, 4, 5, 6, 7], 905));

  // 15  O(n^2)
  bool isTargetSumOpt(List<int> arr, int target) {
    List<List<int>> result = [];
    final Map<int, int> map = {};
    for (int i = 0; i < arr.length; i++) {
      map[arr[i]] = i;
    }
    map.forEach((key, value) {
      int secondNum = target - key;
      if (map.containsKey(secondNum)) {
        if (secondNum > key) {
          List<int> currentResult = [];
          currentResult.addAll([key, secondNum]);
          result.add(currentResult);
        }
      }
    });
    return result.length > 0;
  }

  // print(isTargetSumOpt([1, 2, 3, 4, 5, 6, 7], 5));
  // print(isTargetSumOpt([1, 2, 3, 4, 5, 6, 7], 905));

  // 15  O(?)
  List<List<int>> findAllUniqueSums(List<int> arr, int target) {
    List<List<int>> result = [];
    final Map<int, int> map = {};
    for (int i = 0; i < arr.length; i++) {
      map[arr[i]] = i;
    }
    map.forEach((key, value) {
      int secondNum = target - key;
      if (map.containsKey(secondNum)) {
        if (secondNum > key) {
          List<int> currentResult = [];
          currentResult.addAll([key, secondNum]);
          result.add(currentResult);
        }
      }
    });
    return result;
  }

  // print(findAllUniqueSums([1, 2, 3, 4, 5, 6, 7], 5));
  // print(findAllUniqueSums([1, 2, 3, 4, 5, 6, 7], 905));

  String getShortestStrFromList(List<String> arr) {
    String result = arr[0];
    for (int i = 0; i < arr.length; i++) {
      if (arr[i].length < result.length) {
        result = arr[i];
      }
    }
    return result;
  }

  // print(getShortestStrFromList(['Alice', 'Bob', 'Mark']));

  // Timer(Duration(seconds: 2), () => print('test'));

  new Timer.periodic(new Duration(seconds: 2), (timer) {
    print('test');
  });
}
