import 'package:flutter/material.dart';
import '../constants.dart';

class BorderedActionButton extends StatelessWidget {
  final String action;
  const BorderedActionButton({
    Key key, this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(35.0)
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.0),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                action,
                style: TextStyle(
                  fontSize: 20.0,
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}