import 'package:flutter/material.dart';


class ForYouCategoryList extends StatelessWidget {
  const ForYouCategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:[
         Card(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: ListTile(
                leading: Image.asset('assets/bag.png.jpg'),
               title: Text('How to seem like you  Always have your shot  Together'), 
               subtitle: Text('Jonvy Vino'),
               trailing: Text('\n4 min read'),
             ),
           ),
         ),
         SizedBox(height: 30),
           Card(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: ListTile(
                leading: Image.asset('assets/bag.png.jpg'),
               title: Text('Does Dry is January Actually Improve Your Health?'), 
               subtitle: Text('Jonvy Vino'),
               trailing: Text('\n4 min read'),
             ),
           ),
           
         ),
         SizedBox(height: 30),
           Card(
           child: Padding(
             padding: const EdgeInsets.all(20.0),
             child: ListTile(
                leading: Image.asset('assets/bag.png.jpg'),
               title: Text('You do hire a designer to make something .you hire them.'), 
               subtitle: Text('Jonvy Vino'),
               trailing: Text('\n4 min read'),
             ),
           ),
         ),
      ]
          );

    
  }
}