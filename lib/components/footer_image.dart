import 'package:flutter/material.dart';

class FooterImage extends StatelessWidget {
  final String imgUrl;
  const FooterImage({
    Key key, this.imgUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imgUrl),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}