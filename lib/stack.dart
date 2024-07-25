import 'package:flutter/material.dart';
class hotel extends StatefulWidget {
  const hotel({super.key});

  @override
  State<hotel> createState() => _hotelState();
}

class _hotelState extends State<hotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
        Container(height: 300,
        width: 500,

        decoration: BoxDecoration( color: Colors.black54,borderRadius: BorderRadius.only(bottomRight:
        Radius.circular(20),bottomLeft: Radius.circular(20)
        )
        ),
        ),
        Positioned(left: 27 ,top: 229,
          child: Container(
            height: 120,
            width: 340,
           decoration: BoxDecoration(borderRadius: 
           BorderRadius.circular(30), color: Colors.white,),),
        )
      ],),

    );
  }
}
