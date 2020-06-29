import 'package:flutter/material.dart';
import 'package:salon_app/uidata.dart';

class SpecialistColumn extends StatelessWidget {
  final String specImg, specName;

  const SpecialistColumn({Key key, this.specImg, this.specName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(specImg), fit: BoxFit.cover)),
        ),
        Container(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Text(specName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
                  SizedBox(height: 4),
              Row(children: <Widget>[
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.mainColor, size: 14),
                SizedBox(width: 1),
                Icon(Icons.star, color: UIData.lightColor, size: 14),
              ]),
              SizedBox(height: 4),
              Row(children: <Widget>[
                Icon(Icons.phone, size: 15, color: Colors.grey[700]),
                SizedBox(width:2),
                Expanded(child: Text("0722000000", style: TextStyle(
                  color: Colors.grey[700], fontSize: 12
                )))
              ],)
            ],
          ),
        )
      ],
    );
  }
}
