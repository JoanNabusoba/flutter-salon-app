import 'package:flutter/material.dart';
import 'package:salon_app/uidata.dart';

class MyButton2 extends StatelessWidget {
  final String btnText;
  final VoidCallback onpressed;

  const MyButton2({Key key, this.btnText, this.onpressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(horizontal: 10),
      height: 30,
      child: FlatButton(
        color: UIData.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        onPressed: onpressed,
        child: Text(btnText, style: TextStyle(color: Colors.white, 
        fontWeight: FontWeight.w400)),
      ),
    );
  }

}