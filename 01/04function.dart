

void main() {
  // printInfo();
  // sum(1);
  // fixName("张三",age:19,sex: "未知");
  // fn2(fn1);
  // fn(6);
  print(addFunction(1,100));
  // print(num);
}
/*
  定义外部函数
 */
/* printInfo() {
  print("我是外部定义的函数");
} */
/* 
  定义可选参数的函数,形参用[]表示可选,默认参数
  void sum(int stratIndex, [int endIndex=20,String sex="男"]) {
  // if(endIndex != null) {
  //   print("$stratIndex---$endIndex");
  // } 
  // if(sex != null) {
  //   print("$stratIndex---endIndex---sex");
  // }
  // else{
  //   print("$stratIndex---end");
  // }
  print("$stratIndex---$endIndex---$sex");
}
 */


/* 
  定义一个命名参数,命名参数放入大括号内,调用的时候函数的实参必须根据命名参数规则进行传入
  void fixName(String name,{int age,String sex = "女"}) {
    print("$name---$age----$sex");
  }
  fixName("张三",age:19,sex: "未知");
 */

/* 
  箭头函数逻辑代码只能写一行
 */



// void sum(int stratIndex, [int endIndex=20,String sex="男"]) {
  // if(endIndex != null) {
  //   print("$stratIndex---$endIndex");
  // } 
  // if(sex != null) {
  //   print("$stratIndex---endIndex---sex");
  // }
  // else{
  //   print("$stratIndex---end");
  // }
//   print("$stratIndex---$endIndex---$sex");
// }
/* void fixName(String name,{int age,String sex = "女"}) {
  print("$name---$age----$sex");
} */

/* void fn1() {
  print("我是一个匿名方法");
}
void fn2(fn) {
  fn();
}
var aa = ()=>{
  print("abc1")
}; */

/**
 *方法的递归

 *   */
 /* int num = 1;
 void fn(int n) {
   
   num *= n;
   n--;
   if(n != 1) {
      fn(n);
   }
  
 } */
 /* 
  递归1-100的和
  */
  int addFunction(int startIndex, int endIndex) {
    int num = 0 ;
    void fn (int a, int b) {
      for(var i = a; i<=b; i++){
        num+= i;
      }
    };
    fn(startIndex, endIndex);
    return num;
  }