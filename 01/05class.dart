/* 
  面向对象的三个特征：封装、继承、多态
    多态:允许子类型的指针赋值给父类型的指针，同一个函数调用会有不同的执行效果

    dart中所有东西都是对象，所有的对象都继承Object类
    dart是使用类和单继承的面向对象语言，所有的对象都是类型的实例，并且所有的类都是Object的子类;
    一个类通常是由属性和方法组成的
 */
//定义类必须以大写开头
class Person {
  int age ;
  String name;
  String sex;
  /* 
    在dart中构造函数与类同名,在实例化的时候会执行构造函数
   */
  //这是默认构造函数
  Person(String sex) {
    this.sex = sex;
  }
  //dart中存在命名构造函数,在实例化的时候就可以直接实例化命名构造函数
  //如 Person myPerson = new Person.now();
  Person.now(){
    print(DateTime.now());
  }
  //上面构造函数的写法等价于Person(this.sex)
  void getInfo(){
    print("${this.name}---${this.age}");
  }
  void setInfo(String name, int age){
    this.name = name;
    this.age = age;
  }
  void userSex() {
    print(this.sex);
  }
}
void main() {
  /* Person myPerson = new Person("男");
  myPerson.setInfo("张三", 19);
  myPerson.getInfo();
  myPerson.userSex(); */
  // Person myPerson = new Person.now();
  Rect myRect = new Rect();
  print(myRect.myWidth);
  //此处使用set属性是直接赋值
  myRect.myHeight = 20;
}

class Rect {
  num width;
  num height;
  //赋值默认值;
  Rect(): width=10,height=20 {
    print("${this.width}---${this.height}");
  }
  /* 
    get用来存值，相当于conputed计算属性，在实例化之后当做属性来使用
    set用来设置值，在实例化以后当做方法来使用
   */
  get myWidth{
    return this.width * 2;
  }
  void set myHeight(num height) {
    this.height = height;
  }
}