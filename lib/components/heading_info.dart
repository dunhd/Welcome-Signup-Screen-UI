import 'package:flutter/material.dart';
import 'package:welcome_signup_ui/constants.dart';

class HeadingInfo extends StatelessWidget {
  final String heading;
  final String subHeading;

  const HeadingInfo({
    Key key,
    this.heading,
    this.subHeading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          heading,
          style: TextStyle(
            color: kTextColor,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          subHeading,
          style: TextStyle(
            color: kTextColor,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
