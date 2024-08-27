import 'package:flutter/cupertino.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.desktop});

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width <= 599) {
      return mobile;
    } else if (width > 599 && width <= 1023) {
      return tablet;
    }
    return desktop;
  }
}
