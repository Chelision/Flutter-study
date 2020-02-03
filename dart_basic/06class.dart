import '05class.dart';

class Person {
  String name = "a";
  int age = 17;
  static String sex = "男";
  Person(name,age) {
    this.name = name;
    this.age = age ;
  }
  run() {
    print("I`m running");
  }
}
class Zhangsan extends Person {
  Zhangsan(name, age) : super(name, age);
  //父类方法重写
  @override  
  run() {
    print("${this.name}---${this.age}");
  }
}
void main(List<String> args) {
  // print(Person.sex);
  var p;
  p =new Person("张三", 20);
  Person p2 = new Person("name", 10);
  Zhangsan ZS = new Zhangsan("张三", 20);
  //级联操作符
  ZS..age = 18
    ..name = "李四"
    ..run();
}