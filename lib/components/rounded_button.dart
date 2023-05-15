import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.label, this.color, @required this.onPressed, this.tag});

  final String label;
  final Color color;
  final Function onPressed;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Hero(
        tag: tag,
        child: Material(
          color: color,
          borderRadius: BorderRadius.circular(30.0),
          elevation: 5.0,
          child: MaterialButton(
            onPressed: onPressed,
            minWidth: 200.0,
            height: 42.0,
            child: Text(label,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0, // shadow blur
                      color: Colors.black, // shadow color
                      offset: Offset(2.0, 2.0), // how much shadow will be shown
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
