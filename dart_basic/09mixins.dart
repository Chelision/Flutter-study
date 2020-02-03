/* 
  * mixins的中文意思就是混入，就是在类中混入其他的功能
  * dart中可以使用mixins实现类似多继承的功能

  因为mixins使用的条件，随着Dart版本一直在变，这里讲的是Dart2.x中使用的mixins的条件；
    * 作为mixins的类只能继承自Object,不能继承其他类
    * 作为mixins的类不能有构造函数
    * 一个类可以mixins多个minins类
    * mixins绝不是继承，也不是接口，而是一种全新的特性

    mixins的类型就是其超类的子类型
 */

class A {
  printA() {
    print("A");
  }
}
class B {
  printB(){
    print("B");
  }
}
class D {
  printD() {
    print("D");
  }
  run() {
    print("run D");
  }
}
/* 
  如果A和B有相同方法名字的方法等，后面的会替换前面的
 */
//此处C1是继承的A，因此A可以有构造函数，执行顺序为先执行A继承，再执行B，和D和合并，因此D中的run方法会替换前面的run方法
class C1 extends A with B,D{

}
class C with A,B{
  run() {
    print("C");
  }
}
void main() {
  C c = new C();
  c.printA();
  c.printB();

  c.run();
}