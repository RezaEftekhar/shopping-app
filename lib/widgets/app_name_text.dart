import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shop_userside/widgets/title_text.dart';

class AppNameTextWidget extends StatelessWidget {
  const AppNameTextWidget({super.key,  this.fontsize=25});
 final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      period: Duration(seconds: 3),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
      child: TitleTextWidget(label: 'Shop smart',fontSize: fontsize,),
    );
  }
}
