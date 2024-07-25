import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  final List<String> imgList = [
    'assets/image/ban.jpg',
        'assets/image/doctor2.png',
        'assets/image/doctor3.png',
        'assets/image/doctor4.png',
        'assets/image/doctor5.png'
  ];
int _curentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         children: [
           CarouselSlider(
               items: imgList.map((e){
             return Image.asset(e);
           }).toList(),
               options: CarouselOptions(
                 initialPage: 0,
                 autoPlay: true,
                 autoPlayInterval: Duration(seconds: 2),
                 enlargeCenterPage: true,
                 onPageChanged: (value,_){
                   setState(() {
                     _curentPage= value;
                   });
                 }),
           ),
           Row(children: [
             for (int i=0; i<imgList.length; i++)
               Container(
                 margin: EdgeInsets.all(5),
                 height: 7,
                 width: i==_curentPage? 35 : 20,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(5),color: i==_curentPage? Colors.black:Colors.grey
                 ),
               )
           ],)
         ],
       ),
     ),

    );
  }
}
