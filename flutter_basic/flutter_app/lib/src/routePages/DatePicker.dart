import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerDemo extends StatefulWidget {
  DatePickerDemo({Key key}) : super(key: key);

  @override
  _DatePickerDemoState createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  DateTime _dateTime = DateTime.now();
  //调用日期组件
  /*  _showDatePickerDemo() {
    //调用Flutter中内置的组件showDatePickerDemo
    //context上下文的对象
    showDatePickerDemo(
      // locale: Locale('zn'),
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980), //初始日期1980年
      lastDate: DateTime(2025), //结束日期2025年
    ).then((res) {
      print(res);
    });
  } */
  //调用时间组件
  _showTimePicker() {
    //调用Flutter内置的showTimePicker
    showTimePicker(
        context: context, initialTime: TimeOfDay(hour: 12, minute: 45));
  }

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('custom Done', style: TextStyle(color: Colors.red)),
        cancel: Text('custom cancel', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse("1995-05-19"),
      maxDateTime: DateTime.parse("2025-08-10"),
      initialDateTime: _dateTime,
      dateFormat: 'yyyy-MMMM-dd',
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      onChange: (dateTime, List<int> index) {
        setState(() {
          this._dateTime = dateTime;
        });
      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          this._dateTime = dateTime;
        });
      },
    );
  }

  var now = DateTime.now();
  @override
  void initState() {
    super.initState();
    // print(now.millisecondsSinceEpoch);
    print(formatDate(DateTime(1989, 2, 21), [yyyy, '-', mm, '-', dd]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是顶部导航"),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text("${this.now.millisecondsSinceEpoch}"),
            Text(
                "${DateTime.fromMillisecondsSinceEpoch(this.now.millisecondsSinceEpoch)}"),
            InkWell(
              child: Row(
                children: <Widget>[
                  Text("2020年02月14日"),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: () {
                
              },
            ),
            InkWell(
              child: Row(
                children: <Widget>[Text("10:30"), Icon(Icons.arrow_drop_down)],
              ),
              onTap: () {
                this._showTimePicker();
              },
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Text('点击打开三方库的demo:${this._dateTime}'),
                  Icon(Icons.folder_open),
                ],
              ),
              onTap: () {
                this._showDatePicker();
              },
            )
          ],
        ),
      ),
    );
  }
}
