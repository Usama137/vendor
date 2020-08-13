import 'package:flutter/material.dart';

class RoundedGoogleButton extends StatelessWidget {

  RoundedGoogleButton({this.title,this.colour,this.onPressed, this.textColor});
  final Color colour;
  final Color textColor;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 160.0,
          height: 55.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/googleM.png"),
              SizedBox(
                width: 20,
              ),
              Text(
                title,
                style: TextStyle(color: textColor,
                    fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
