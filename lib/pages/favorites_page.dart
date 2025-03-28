import 'package:flutter/material.dart';
import 'package:navbar_app/widgets/content_widget.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Favorites Page")),
      body: Expanded(child: ContentWidget(pageTitle: 'Favorites Page')),
    );
  }
}
