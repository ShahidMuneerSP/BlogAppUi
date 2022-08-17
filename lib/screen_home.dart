
import 'package:blog_app_ui/bottomNavigationBar.dart';
import 'package:blog_app_ui/screen_activity.dart';
import 'package:blog_app_ui/screen_category.dart';
import 'package:blog_app_ui/screen_me.dart';
import 'package:blog_app_ui/screen_profile.dart';
import 'package:blog_app_ui/screen_settings.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget{
   ScreenHome({Key? key}) : super(key: key);
  final _pages = const[
  ScreenMe(),
  ScreenCategory(),
  ScreenActivity(),
  ScreenProfile(),
  ScreenSettings(),

  ];

 static ValueNotifier<int> selectedIndexNotifier = ValueNotifier(0);
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      leading: Icon(Icons.category),
      title:  Text('Categories'),
      centerTitle: true,
      actions: [
        Icon(Icons.search)
      ],

      ),
      bottomNavigationBar: BlogUiBottomNavigation(),
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: selectedIndexNotifier,
          builder:(BuildContext context, int updatedIndex, _) {
            return _pages[updatedIndex];
          }, ),
      ),
      );
  }
}