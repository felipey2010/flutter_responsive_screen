import 'package:flutter/material.dart';

const minimumTablet = 600;
const minimumDesktop = 1100;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < minimumTablet;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < minimumDesktop &&
      MediaQuery.of(context).size.width >= minimumTablet;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= minimumDesktop;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    // Tela do dispositivo é desktop se a largura da tela é maior ou igual a 1100
    if (size.width >= minimumDesktop) {
      return desktop;
    }
    // É tablet se for maior ou igual a 850
    else if (size.width >= minimumTablet && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
