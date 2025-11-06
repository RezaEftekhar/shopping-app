import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_userside/widgets/title_text.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: FancyShimmerImage(
                  imageUrl: 'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
                  height: size.height *0.2,
                  width: size.width *0.2,
                ),
              ),
              SizedBox(width: 10,),
              IntrinsicWidth(
                child: Column(children: [
                  Row(
                    children: [
                      SizedBox(
                        width: size.width *0.6,
                        child: TitleTextWidget(label: 'Title' *15,maxLines: 2,)),
                      Column(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.clear,color: Colors.red,)),
                          IconButton(onPressed: (){}, icon: Icon(Icons.favorite))
                        ],
                      ),
                      
                    ]
                  )
                ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
