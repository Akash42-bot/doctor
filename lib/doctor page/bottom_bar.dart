import 'package:batch_or/doctor%20page/Pharmacy.dart';
import 'package:batch_or/doctor%20page/homePage.dart';
import 'package:batch_or/doctor%20page/hospitasl_page.dart';
import 'package:batch_or/doctor%20page/profile_detail.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  List list=[
    doctor(),
    hospital(),
    phar(),
    profile(),

  ];
  List<Icon>items=[
   Icon(Icons.home),
    Icon(Icons.local_hospital),
    Icon(Icons.shopping_bag),
    Icon(Icons.person)
  ];
  int _curretIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[_curretIndex],
      bottomNavigationBar:  CurvedNavigationBar(

          index: _curretIndex,
          onTap: (int index){
            _curretIndex=index;
            setState(() {

            });
          },
          items: items),



    );
  }
}
