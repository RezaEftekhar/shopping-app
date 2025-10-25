import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_userside/providers/theme_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Hello world',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(onPressed: () {}, child: Text('Hello world')),
            SwitchListTile(
              title: Text(themeProvider.getDarkTheme?'Dark Mode':'Light Mode'),
              value: themeProvider.getDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(value);
                print('kkkkkkkkkkkkkkkkk${themeProvider.getDarkTheme}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
