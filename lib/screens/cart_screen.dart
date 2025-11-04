import 'package:flutter/material.dart';
import 'package:shop_userside/services/assets_manager.dart';
import 'package:shop_userside/widgets/empty_bag.dart';
import 'package:shop_userside/widgets/subtitle_text.dart';
import 'package:shop_userside/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EmptyBagWiget(
        imagePath: AssetsManager.shoppingBasket,
        title: 'your  cart is empty',
        subtitle: 'Looks like youre cart is empty add something and make me happy',
        buttonText: 'shop now',
      ),
    );
  }
}
