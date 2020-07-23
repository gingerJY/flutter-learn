// Define a function.
printInteger(int aNumber) {
  print('The number is $aNumber.'); // Print to console.
}

// 命名参数
printInteger2({int aNumber = 8}) {
  print('The second number is ${aNumber * 2}.'); // Print to console.
}

// 位置参数
sayHello(String name, int age, [String hobby = 'reading', String attr]) {
  // 位置参数可以有多个，比如[String a, int b]
  StringBuffer sb = new StringBuffer();
  sb.write("hello, this is $name and I am $age years old");
  if (hobby != null) {
    sb.write(", my hobby is $hobby");
  }
  print(sb.toString());
}

// 声明返回值
int add(int a, int b) {
  return a + b;
}

// 不声明返回值
add2(int a, int b) {
  return a + b;
}

// =>是return语句的简写
add3(a, b) => a + b;

class Person {
  eat() {
    print("I am eating...");
  }

  sleep() {
    print("I am sleeping...");
  }

  study() {
    print("I am studying...");
  }
}

class Human {
  String name;
  Human.fromJson(Map data) {
    print("Human's fromJson constructor");
  }
}

class Man extends Human {
  Man.fromJson(Map data) : super.fromJson(data) {
    print("Man's fromJson constructor");
  }
}

// This is where the app starts executing.
main() {
  // numbers
  var a = 0;
  int b = 1;
  double c = 0.1;

  // strings
  var s1 = 'hello';
  String s2 = "world";

  // booleans
  var real = true;
  bool isReal = false;

  // lists
  var arr = [1, 2, 3, 4, 5];
  List<String> arr2 = ['hello', 'world', "123", "456"];
  List<dynamic> arr3 = [1, true, 'haha', 1.0];

  arr.forEach(printInteger); // 将一个函数作为参数传给另一个函数
  // maps
  var map = new Map();
  map['name'] = 'zhangsan';
  map['age'] = 10;
  Map m = new Map();
  m['a'] = 'a';

  //runes，Dart 中 使用runes 来获取UTF-32字符集的字符。String的 codeUnitAt and codeUnit属性可以获取UTF-16字符集的字符
  var clapping = '\u{1f44f}';
  print(clapping); // 打印的是拍手emoji的表情

  // symbols
  print(#s == new Symbol("s")); // true

  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
  printInteger2(aNumber: number);
  print(m);

  sayHello("zhangsan", 20);
  sayHello("zhangsan", 20, "play football");

  print(add(1, 2)); // 3
  print(add2(2, 3)); // 5
  print(add3(1, 2)); // 3

  new Person()
    ..eat()
    ..sleep()
    ..study();

  new Human.fromJson({a: 'a'});
}




