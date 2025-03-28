import 'package:flutter/material.dart';
import 'package:navbar_app/widgets/content_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Expanded(child: ContentWidget(pageTitle: 'Home Page')),
    );
  }
}
