import 'package:flutter/material.dart';
class Soups extends StatelessWidget {
  const Soups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            height:300,

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Category(
                  image_location:'images/vegmanchow.jpeg',
                  image_caption: 'Manchow Soup',
                  ratings:"4*"
                ),

              ],
            ),

          );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  final String ratings;

  Category({
   required this.image_location,
    required this.image_caption,
    required this.ratings,
  });
 //const Category({  Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(5),
    child:InkWell(onTap:(){},
    child: Container(
      width:300,
      child: ListTile(
        title: Image.asset(image_location,fit: BoxFit.cover,),
        subtitle:Column
          (
            children:<Widget>[
              Text(image_caption),
              Text( ratings),
            ],),


      ),
    ),
    ),);
  }
}

