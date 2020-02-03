/* *
  Dart 中抽象类主要用于定义标准，子类可以继承抽象类，也可以实现抽象类接口
   * 抽象类通过abstract关键字来定义
   * Dart中 的抽象方法不用使用abstract声明，Dart中没有方法体的方法称为抽象方法
   * 如果子类继承抽象类必须得实现里面的抽象方法
   * 如果把抽象类当做接口实现的话必须得实现抽象类里面定义的所有属性和方法
   * 抽象类不能被实例化，只有继承它的子类可以
  extends抽象类 和 implements的区别:
   * 如果要重复抽象类里面的方法，并且要用抽象方法约束子类的话我们就用extends继承抽象类
   * 如果只是把抽象类当做标准的话我们就用implements实现抽象类
 */


abstract class Animal{
   //抽象类中的方法为抽象方法
   eat();
  //  run();
 }
 class Dog extends Animal{
  @override
  void eat() {
    print("eating"); 
  }

  run() {
    print("running");
  }
 }
void main(){
  Dog D = new Dog();
  D.eat();
  D.run();
}