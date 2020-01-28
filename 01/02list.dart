// import 'dart:indexed_db';

main() { 
    List students = [
      {"name": "Tom", "age": 19},
      {"name": "Jack", "age": 19},
      {"name": "Lucy", "age": 20},
      {"name": "Bob", "age": 26}
    ];
    /*    
      判断是否为空 isEmpty() 为空返回true
      获取列表长度 length
      数组翻转 reverse()
     */
    /* add() 添加一个元素到List末尾
      students.add({"name": "张三", "age": 28}); 
    */
    /* 
      addAll() 两个List合并
      students.addAll([{"name": "张三", "age": 22}, {"name": "李四", "age": 25}]);
     */
    /* 
      insert(index,element) 在指定index处插入值
      students.insert(1, {"name": "张三", "age": 22});
     */
    /* 
      insertAll(index,list) 在指定index处插入list 其余顺延
      students.insertAll(1, [{"name": "张三", "age": 22},{"name": "李四", "age": 25}]);
     */
    /* 
      followedBy(list) 将自身和参数内list合成一个List,输出一个新数组
      var newArr = students.followedBy([{"name": "张三", "age": 22}]);
     */
    /* 
      removeAt(index) 删除索引位置元素
      students.removeAt(1);
     */
    /* 
      removeLast()删除末尾元素
      removeRange(start,end) 范围删除
      removeWhere() 根据条件删除

      students.removeLast();
      students.removeRange(1,3);
      students.removeWhere((item){
        return item["age"] == 20;
      });
     */
    /* 
      clear()清除数组;
      修改指定index位置的值
      students[0]["age"] = 33
     */
    /* 
      setRange(startIndex,endIndex,list) 范围修改List的值
      students.setRange(1, 3, [{"a":"b"},{{"a":"c"}}]); //后面的个数跟前面的一致
      replaceRange(start,end,list)范围替换 含头不含尾
      students.replaceRange(1, 3, [{"a":"b"},{"a":"c"},{"a":"d"},{"a":"d"}]);
      fillRange(start,end,value) 从start-end 每个元素用value替换
      students.fillRange(0, 3,"222");
     */
    /* 
      retainWhere(()=>(bool)) 根据条件筛选元素
      students.retainWhere((item){
        return  item["age"] >= 20;
      });
     */
      /* 
        setAll(index,list) 从index开始，使用list内的元素逐个替换本list中的元素
        students.setAll(1, ["11","22","33"]);拼接后的长度不能超过原列表的长度
       */
      /* 
        indexOf(element,[start]) 查找指定元素在list中的索引
        lastIndexOf(obj,index) 从后往前查找，返回第一个的index
        elementAt(index) 获取指定索引位置的元素
        var abc = ["a","b","c"];
        print(abc.indexOf("a"));
      */

      /* 
        any((element)=>(bool)) 判断List中是否有任意一个元素符合给定的参数,返回一个布尔值;
        var arr = students.any((item){
          return item["age"] > 20;
        });

        every((element)=>(bool)) 判断List中是否每个元素都符合参数函数
        var aa = students.every((item) {
          return item["age"] > 20;
        });
       */
        /* 
          join: 将数组链接为一个字符串
          print(students.join("-"));

          split:将字符串按照某个字符切割为数组
          var str = students.join("-");
          print(students.join("-").split("-"));
        */
        /* var str = students.join("-");
        print(students.join("-").split("-")); */

        /* List aaa = [11,22,22,22,33];
        var bbb = new Set();
        bbb.addAll(aaa);
        print(bbb is List);
        print(bbb.toList()); */
        /* 
          where 筛选列表
          var newList = students.where((item){
            return item['age'] > 20;
          });
         print(newList);
         */
        /* 
          forEach: for的语法糖
          遍历数组,对象，set类型的数据
           Map person = {
        "name": "张三",
        "age": 19
      };
      var newArr = person.forEach((key,value){
        print("$key--$value");
      });
         */
      Map person = {
        "name": "张三",
        "age": 19
      };
      var newArr = person.forEach((key,value){
        print("$key--$value");
      });
}