/* *
  * 和Java一样，dart也有接口，但是和java还是有区别的。
  * 首先dart的接口没有interface的关键字定义接口，而是普通类或抽象类都可以作为接口被实现
  * 同样适用inplement关键字进行实现
  * 但是dart的接口有点奇怪，如果实现的类是普通类，会将普通类和抽象类中的属性和方法全部需要复写一遍
  * 而因为抽象类可以定义抽象方法，普通类不可以，所以一般如果需要实现像Java接口那样的方式，一般会使用抽象类。
  * 建议使用抽象类定义接口
 */
abstract class A {
  String C;
  run();
}
class B implements A{
  @override
  run() {
    // TODO: implement run
    return null;
  }

  @override
  String C;
  
}