import 'package:flutter/material.dart';
import 'package:navbar_app/widgets/content_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Page")),
      body: Expanded(child: ContentWidget(pageTitle: 'Profile Page')),
    );
  }
}
