import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key key,this.title,this.color,this.titleColor,this.onPressed}) : super(key: key);
  final VoidCallback onPressed;
  final String title;
  final Color color,titleColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: color,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)),
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressed,
        child: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(color: titleColor, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
