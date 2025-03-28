import 'package:flutter/material.dart';
import 'package:navbar_app/widgets/content_widget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Page")),
      body: Expanded(child: ContentWidget(pageTitle: 'Search Page')),
    );
  }
}
