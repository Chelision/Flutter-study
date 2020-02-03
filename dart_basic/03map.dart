void main() {
  /* 
    常用属性:
      keys:获取所有的key值,
      values: 获取所有的value值,
      isEmpty: 是否是空,
      isNotEmpty: 是否不为空,
    常用方法: 
      remove(key) 删除指定key的数据
      addAll({...})合并映射,
      cotainsValue/Key 查看映射内的值/属性,返回true或者false
      forEach 遍历循环
   */
    Map person = {
      "name": "张三",
      "age": 19,
      "sex": "male"
    };
    /* 
      print(person.isEmpty);
      print(person.isNotEmpty);
      print(person.keys.toList());
      print(person.values.toList());
    */
    /* person.addAll(
      {
        "height": "180cm",
        "job": "doctor"
      }
    ); */
    /* print(person.remove("name"));
    print(person); */
    /* print(person.containsKey("name"));
    print(person.containsValue("张三")); */
    List aa = [1,2,3];
    // List bb = new List();
    // for(var i= 0; i< aa.length; i++) {
    //   bb.add(aa[i]*2);
    // }
    // print(bb);
    var bb = aa.map((item){
      return item*3;
    });
    print(bb);

}