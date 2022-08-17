
import 'package:blog_app_ui/screen_home.dart';
import 'package:flutter/material.dart';

class BlogUiBottomNavigation extends StatelessWidget {
  const BlogUiBottomNavigation({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return ValueListenableBuilder(
    valueListenable: ScreenHome.selectedIndexNotifier,
     builder: (BuildContext ctx, int updatedIndex, Widget? _) { 
       return BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      currentIndex: updatedIndex,
      onTap: (newIndex) {
       ScreenHome.selectedIndexNotifier.value = newIndex; 
      },
      items:const[
        
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Me', backgroundColor: Colors.black),
        BottomNavigationBarItem(icon:Icon(Icons.folder) ,label: 'Category', backgroundColor: Colors.black),
         BottomNavigationBarItem(icon:Icon(Icons.local_activity),label:'Activity', backgroundColor: Colors.black ),
          BottomNavigationBarItem(icon:Icon(Icons.person),label: 'profile' , backgroundColor: Colors.black),
           BottomNavigationBarItem(icon:Icon(Icons.settings),label: 'Settings', backgroundColor: Colors.black),
   
      ]
     );
      },
     
     
   );
  }

  
}

      
   