import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key}) : super(key: key);

  @override
  _SwiperPageState createState() => _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {
  var imageList = [
    {
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581851769943&di=dcad7bd610d5fa464d95bb5bbae5681e&imgtype=0&src=http%3A%2F%2Fa3.att.hudong.com%2F68%2F61%2F300000839764127060614318218_950.jpg"
    },
    {
      "url":"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581851769941&di=ec5317093c9e74075c92fc2dadab53e8&imgtype=0&src=http%3A%2F%2Fa2.att.hudong.com%2F08%2F72%2F01300000165476121273722687045.jpg"
    },
    {
      "url": "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1581851769941&di=e77675c3470f350e6458cb11d23b3a9a&imgtype=0&src=http%3A%2F%2Ffile02.16sucai.com%2Fd%2Ffile%2F2014%2F0617%2Fbe2f5973a60156df0c6aeb2aace791c6.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是Swiper页面的导航"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text("轮播组件"),
            AspectRatio(
              aspectRatio: 16/9,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return new Image.network(
                    this.imageList[index]["url"],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: this.imageList.length,
                itemWidth: 300.0,
                itemHeight: 400.0,
                layout: SwiperLayout.TINDER,
                pagination: new SwiperPagination(),
                control: new SwiperControl(),
                duration:1000,
                onTap: (index){
                  print(index);
                },
                onIndexChanged:(index){
                  print("$index---我是被拖动改变");
                },
                
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
