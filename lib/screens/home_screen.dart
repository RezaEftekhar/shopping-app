import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_userside/providers/theme_provider.dart';
import 'package:shop_userside/widgets/subtitle_text.dart';
import 'package:shop_userside/widgets/title_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SubtitleTextWidget(label: 'Hello ', fontSize: 50),
            TitleTextWidget(label: 'Hello title'),
            ElevatedButton(onPressed: () {}, child: Text('Hello world')),
           
          ],
        ),
      ),
    );
  }
}
