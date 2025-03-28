import 'package:flutter/material.dart';
import 'package:navbar_app/utils/responsive.dart';

class ContentWidget extends StatelessWidget {
  final String pageTitle;

  const ContentWidget({super.key, required this.pageTitle});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey[850], // Dark grey background for mobile
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageTitle, style: TextStyle(color: Colors.white)),
            SizedBox(height: 18.0),
            Text("Mobile Layout", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      tablet: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green, // Green background for tablet
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageTitle, style: TextStyle(color: Colors.white)),
            SizedBox(height: 18.0),
            Text("Tablet Layout", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      desktop: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.red, // Red background for desktop
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(pageTitle, style: TextStyle(color: Colors.white)),
            SizedBox(height: 18.0),
            Text("Desktop Layout", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
