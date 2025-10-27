import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';
import 'package:shop_userside/providers/theme_provider.dart';
import 'package:shop_userside/services/assets_manager.dart';
import 'package:shop_userside/widgets/subtitle_text.dart';
import 'package:shop_userside/widgets/title_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
        title: Text('Profile Screen'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: TitleTextWidget(
                label: 'Please login to have unlimited access',
              ),
            ),
          ),
          Visibility(
            visible: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).cardColor,
                      border: Border.all(
                        color: Theme.of(context).colorScheme.surface,
                        width: 3,
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__340.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(label: 'Reza EFtekhar'),
                      SizedBox(height: 6),
                      SubtitleTextWidget(label: 'Reza.eftekhar80@gmail.com'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Divider(thickness: 1,),
                 SizedBox(height: 10,),
                TitleTextWidget(label: 'General'),
              SizedBox(height: 10,),
              CustomListTile(imagePath: AssetsManager.orderSvg, text: 'All Order', function: (){}),
               CustomListTile(imagePath: AssetsManager.wishlistSvg, text: 'WishList', function: (){}),
                CustomListTile(imagePath: AssetsManager.address, text: 'Address', function: (){}),
                Divider(thickness: 1,),
                 TitleTextWidget(label: 'Settings'),
                      SizedBox(height: 10),
                    SwitchListTile(secondary: Image.asset(AssetsManager.theme,height: 30,),
              title: Text(
                themeProvider.getDarkTheme ? 'Dark Mode' : 'Light Mode',
              ),
              value: themeProvider.getDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(value);
              },
            ),   
              ],
            ),
          ),
          Center(child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12))),
            onPressed: () {},icon: Icon(Icons.login), label:Text('Login')))
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.text,
    required this.function,
  });
  final String imagePath, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      title: SubtitleTextWidget(label: text),
      leading: Image.asset(imagePath, height: 34),
      trailing: Icon(Icons.arrow_right),
    );
  }
}
