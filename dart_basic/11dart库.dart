
import 'dart:math';//dart中的数学库
import 'dart:io';//dart中的网络请求,api接口等
import 'dart:convert';//字符串编码等库


//api接口http://news-at.zhufu.com/api/3/stories

/* 
  async 和await
    这两个关键字使用只需要记住两点：
      只有async方法才能使用await关键字调用方法
      如果调用别的async方法必须使用await关键字

  async是让方法编程异步
  await是等待异步方法执行完成
 */
_getDataFromZhuhuAPI() async{

  //创建HttpClient对象
  var httpClient = new HttpClient();
  //创建uri对象
  var uri = new Uri.http("news-at.zhufu.com", "/api/3/stories/latest");
  //发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  //关闭请求，等待响应
  var response = await request.close();
  //解码响应的内容
  return await response.transform(utf8.decoder).join();
}


/* 
  调用第三方库：
    创建一个pubspec.yaml内容如下:
      name:xxx
      description:a new flutter module project
      despendencies:
        http:^0.12.0+2
        date:_format:^1.0.6
    配置dependencies
    运行pub get 获取远程库
    看文档进行使用
 */
void main() async{
  print(await _getDataFromZhuhuAPI());
}