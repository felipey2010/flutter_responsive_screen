import 'package:flutter/material.dart';
import 'package:navbar_app/widgets/content_widget.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 404")),
      body: Expanded(child: ContentWidget(pageTitle: 'Page not found')),
    );
  }
}
