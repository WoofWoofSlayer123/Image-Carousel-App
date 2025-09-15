import 'package:flutter/material.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
return MaterialApp(
 title: 'My Profile App',
 theme: ThemeData(
   primarySwatch: Colors.blueGrey,
 ),
 home: HomePage(),
);
 }
}

class HomePage extends StatelessWidget{

 final List imageUrls = [
   'hhttps://mlpnk72yciwc.i.optimole.com/cqhiHLc.IIZS~2ef73/w:auto/h:auto/q:75/https://bleedingcool.com/wp-content/uploads/2021/06/Pikachu-color-model-publicity-cel.jpg',
       'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2024/03/pokemon-raichu-mega-evolution-concept.jpg?q=50&fit=crop&w=1100&h=618&dpr=1.5',
       'https://static0.thegamerimages.com/wordpress/wp-content/uploads/2021/08/pichu.jpeg?q=50&fit=crop&w=1100&h=618&dpr=1.5',
       'https;//picsum.photos/400/300?random=4',
       'https;//picsum.photos/400/300?random=5',
 ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('My Gallery'),
       backgroundColor: Colors.blue,
     ),
     body: Column(
       children: [
         Container(
           height: 300,
           child: ListView.builder(
             scrollDirection: Axis.horizontal,
             itemCount: imageUrls.length,
             itemBuilder: (context, index){
               return Container(
                 margin: EdgeInsets.all(8.0),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(10),
                   child: Image.network(
                     imageUrls[index],
                     width: 400,
                     height: 400,
                     fit: BoxFit.cover,
                   ),
                 ),
               );
             }
           ),
         ),
         Padding(padding: EdgeInsets.all(16.0),
           child: Column(
             children: [
               Text('Image Gallery',
               style:  TextStyle(
                 fontSize: 24,
                 fontWeight: FontWeight.bold,
                 color: Colors.blue,
               ),
               ),
               SizedBox(height: 8),
               Text('Swipe left or right to explore there amazing photos.',
               style: TextStyle(
                 fontSize: 16,
                 color: Colors.grey[600]
               ),
               textAlign: TextAlign.center,
               ),
             ],
           ),
         ),
       ],
     ),
   );
 }
}

