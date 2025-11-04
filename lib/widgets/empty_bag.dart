import 'package:flutter/material.dart';
import 'package:shop_userside/services/assets_manager.dart' show AssetsManager;
import 'package:shop_userside/widgets/subtitle_text.dart'
    show SubtitleTextWidget;
import 'package:shop_userside/widgets/title_text.dart' show TitleTextWidget;

class EmptyBagWiget extends StatelessWidget {
  const EmptyBagWiget({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.buttonText,
  });
  final String imagePath, title, subtitle, buttonText;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 50),
          Image.asset(
            imagePath,
            width: double.infinity,
            height: size.height * 0.35,
          ),
          SizedBox(height: 20),
          TitleTextWidget(label: 'Whoops', fontSize: 40, color: Colors.red),
          SizedBox(height: 20),
          SubtitleTextWidget(label: title, fontWeight: FontWeight.w600),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SubtitleTextWidget(
              label: subtitle,
              fontWeight: FontWeight.w400,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            ),
            onPressed: () {},
            child: Text(buttonText),
          ),
        ],
      ),
    );
  }
}
