import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  final String columnImg, columnTxt;
  final Color columnBg;

  const MyColumn({Key key, this.columnImg, this.columnTxt, this.columnBg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: columnBg,
          ),
          child: Image(image: AssetImage(columnImg), fit: BoxFit.contain),
        ),
        SizedBox(height: 10),
        Text(columnTxt),
        SizedBox(height: 10)
      ],
    );
  }
}
