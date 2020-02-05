import 'package:flutter/material.dart';
import 'package:flutter_dojo/common/main_title_widget.dart';

class SimpleDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MainTitleWidget('SimpleDialog基本使用'),
        RaisedButton(
          onPressed: () => showSimpleDialog(context),
          child: Text('Show SimpleDialog'),
        )
      ],
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog<Null>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog title'),
          children: <Widget>[
            SimpleDialogOption(
              child: Text('item 1'),
              onPressed: () {},
            ),
            SimpleDialogOption(
              child: Text('item 2'),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }
}
