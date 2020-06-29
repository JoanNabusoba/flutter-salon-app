import 'package:flutter/material.dart';

class DateColumn extends StatelessWidget {
  final String weekDay, date;
  final Color dateBg, dateTextColor;

  const DateColumn(
      {Key key, this.weekDay, this.date, this.dateBg, this.dateTextColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weekDay, style: TextStyle(color: Colors.white)),
        SizedBox(height: 15),
        Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: dateBg,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(date, style: TextStyle(color: dateTextColor))),
      ],
    );
  }
}
