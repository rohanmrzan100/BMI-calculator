import 'package:flutter/material.dart';

class reusablecard3 extends StatelessWidget {
  final Widget cardchild;

  reusablecard3(this.cardchild);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFF1D2E33), borderRadius: BorderRadius.circular(15)),
    ));
  }
}

class reusablecard1 extends StatelessWidget {
  final Color cardcolor;
  String icontext;
  IconData iconimage;
  reusablecard1(this.cardcolor, this.iconimage, this.icontext);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconimage,
            size: 90,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            icontext,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: cardcolor, borderRadius: BorderRadius.circular(15)),
    ));
  }
}

class reusablecard2 extends StatelessWidget {
  final Widget cardchild;

  reusablecard2(this.cardchild);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: cardchild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFF1D2E33), borderRadius: BorderRadius.circular(15)),
    ));
  }
}

class roundbuttons extends StatelessWidget {
  final IconData iconimage;
  final Function onPressed;

  roundbuttons(this.iconimage, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey[700],
      child: RawMaterialButton(
        onPressed: () {
          onPressed();
        },
        constraints: BoxConstraints.tightFor(width: 50, height: 50),
        child: Icon(iconimage),
      ),
    );
  }
}

class textforresult extends StatelessWidget {
  final int fontsize;
  final String textstring;
  textforresult(this.textstring, this.fontsize);

  @override
  Widget build(BuildContext context) {
    return Text(textstring, style: TextStyle(fontSize: fontsize.toDouble()));
  }
}
