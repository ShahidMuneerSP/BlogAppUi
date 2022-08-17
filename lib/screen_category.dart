

import 'package:blog_app_ui/categoryList/beauty_category_list.dart';
import 'package:blog_app_ui/categoryList/design_category_list.dart';
import 'package:blog_app_ui/categoryList/education_category_list.dart';
import 'package:blog_app_ui/categoryList/foryou_category_list.dart';
import 'package:flutter/material.dart';

class ScreenCategory extends StatefulWidget {
  const ScreenCategory({Key? key}) : super(key: key);
  

  @override
  State<ScreenCategory> createState() => _ScreenCategoryState();
}

class _ScreenCategoryState extends State<ScreenCategory> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync:this );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.pink,
          unselectedLabelColor: Colors.black,
          controller: _tabController,
          tabs: const[
           Tab(text: 'For You'),
          Tab(text: 'Design'),
          Tab(text: 'Beauty'),
          Tab(text:'Education'),
          
        ]),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
            ForYouCategoryList(),
            DesignCategoryList(),
            BeautyCategoryList(),
            EducationCategoryList(),

        
          ]),
        )
      ],
    );
  }
}