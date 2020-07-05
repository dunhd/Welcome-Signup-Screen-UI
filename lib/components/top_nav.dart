import 'package:flutter/material.dart';
import 'package:welcome_signup_ui/constants.dart';

class TopNav extends StatelessWidget {
  final String action;
  final Function press;
  const TopNav({
    Key key, this.action, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(action,
                style: TextStyle(
                  fontSize: 20.0,
                  color: kTextColor,
                )),
          ),
        )
      ],
    );
  }
}