import 'package:flutter/material.dart';
import 'package:shop_userside/widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleTextWidget(label: 'ProfileScreen'),)
    );
  }
}