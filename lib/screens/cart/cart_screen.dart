import 'package:flutter/material.dart';
import 'package:shop_userside/screens/cart/cart_widget.dart';
import 'package:shop_userside/services/assets_manager.dart';
import 'package:shop_userside/widgets/app_name_text.dart';
import 'package:shop_userside/widgets/empty_bag.dart';
import 'package:shop_userside/widgets/subtitle_text.dart';
import 'package:shop_userside/widgets/title_text.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWiget(
              imagePath: AssetsManager.shoppingBasket,
              title: 'your  cart is empty',
              subtitle:
                  'Looks like youre cart is empty add something and make me happy',
              buttonText: 'shop now',
            ),
          )
        : Scaffold(
          appBar:AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        title: TitleTextWidget(label: 'cart(6)'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_rounded) )
        ],
      ), 
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return CartWidget();
            }));
  }
}
