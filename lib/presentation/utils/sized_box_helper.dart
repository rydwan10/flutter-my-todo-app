import 'package:flutter/material.dart';

// ignore: must_be_immutable
class VerticalSpace extends StatelessWidget {
  double size = 0;
  VerticalSpace({Key? key, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
    );
  }
}

// ignore: must_be_immutable
class HorizontalSpace extends StatelessWidget {
  double size = 0;
  HorizontalSpace({Key? key, this.size = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
    );
  }
}
