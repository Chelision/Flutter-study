// import 'dart:ffi';

// import 'dart:svg';

main() {
  // 变量
  /*  默认值
  未初始化的变量默认值是 null。即使变量是数字 类型默认值也是 null，因为在 Dart 中一切都是对象，数字类型 也不例外。 */
  /* 
    final 和 const
      使用过程中从来不会被修改的变量， 可以使用 final 或 const, 而不是 var 或者其他类型， Final 变量的值只能被设置一次； Const 变量在编译时就已经固定 (Const 变量 是隐式 Final 的类型.) 最高级 final 变量或类变量在第一次使用时被初始化
   */
    final time1 = DateTime.now();
    const time2 = 1579242281286;
    //整数值不大于64位， 具体取决于平台。 在 Dart VM 上， 值的范围从 -263 到 263 - 1.Dart 被编译为 JavaScript 时，使用 JavaScript numbers, 值的范围从 -253 到 253 - 1.
    int num = 123; 

    //64位（双精度）浮点数，依据 IEEE 754 标准。
    double doub = 1.54;

    //Dart 字符串是一组 UTF-16 单元序列。 字符串通过单引号或者双引号创建。
   /*  String str = "ads";
    String str1 ;
    print('asdad$str');
    print(r'asdad$str'); //转义
    if(str1 == null) {
      print(true);
    } */
  //List
    // Dart 中的 List 字面量非常像 JavaScript 中的 array 字面量。
   /*  List abc = [1,2,3];
    for(var i = 0; i<abc.length; i++) {
      print(i);
    } */
    // const acc = [1,2,34,5];

  /* 
    Dart 语言支持以下内建类型：
      Number
      String
      Boolean
      List (也被称为 Array)
      Map
      Set
      Rune (用于在字符串中表示 Unicode 字符)
      Symbol
      这些类型都可以被初始化为字面量。 例如, 'this is a string' 是一个字符串的字面量， true 是一个布尔的字面量。
   */
    /* var callbacks = [];
    for(var i = 0; i < 2; i++) {
      callbacks.add(()=>{
        print(i)
      });
    }
    callbacks.forEach((item) => {
      item()
    }); */
    // 输出1,2而不会出现js中闭包中出现的，2,2
   /*  var collection = [0, 1, 2];
    for(var i in collection) {
      print(i);
    } */
    /* int i = 10;
  
    while(i < 15){
      i++;
      print(i);
    }  */
    /* var i = 5;
    do{
      print(i);
    }
    while(i > 10); */
    
    /* for(int a = 10; a < 20; a++) {
      if(a == 15) {
       break;
      }
      print(a);
    } */
    int text = 9;
    assert(text > 10);
    print(text);
}