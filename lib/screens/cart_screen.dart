import 'package:flutter/material.dart';
import 'package:shop_userside/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleTextWidget(label: 'CartScreen')),
    );
  }
}
