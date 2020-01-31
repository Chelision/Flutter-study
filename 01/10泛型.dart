/* 
  泛型就是解决类、接口、方法的复用性、以及对不特定数据类型的支持（类型校验）
 */
/* 
  泛型方法：
    run<T>(T name,int age) {
      print("${name}----${age}");
    }
  run<String>("张三",19);//此处调用的时候指明了T为String后面所以被T约束的都要是String类型。
  泛型数组:
    List myList = new List<String>(); //只能增加String类型的数据
    myList.add("张三");
    print(myList);
 */
class A<T>{
   T name;
   T sex;
    A(T name, T sex){
      this.name = name;
      this.sex = sex;
     print("${this.name}----${this.sex}");
   }
 }
void main() {
  A a = new A<String>("12","3");

}