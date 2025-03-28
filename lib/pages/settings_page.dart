import 'package:flutter/material.dart';
import 'package:navbar_app/widgets/content_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings Page")),
      body: Expanded(child: ContentWidget(pageTitle: 'Settings Page')),
    );
  }
}
