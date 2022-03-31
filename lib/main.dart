
import 'package:flutter/material.dart';
import 'package:restaurant/Login_enter .dart';
import 'package:restaurant/Recipies.dart';
import 'package:carousel_pro/carousel_pro.dart';
 void main()
 {
   runApp(
      MaterialApp(
      home:LoginPage(),
        debugShowCheckedModeBanner: false,
     )
   );
 }
 class LoginPage extends StatelessWidget {
   const LoginPage({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:  new AppBar(
         title: Text("Restaurant"),
         backgroundColor:Colors.red,
         actions: <Widget>[
           new IconButton(onPressed: (){}, icon: Icon(Icons.settings,color: Colors.white,)),
         ],
       ),
       body: ListView(
         children: <Widget>[
          // LoginEnter(),
           new Padding(padding: EdgeInsets.all(10),
           child: new Text("SOUPS"),),
           //REcipies
           Soups(),
         ],
       ),



     );
   }
 }
