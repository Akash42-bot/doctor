import 'package:batch_or/Imports.dart';
import 'package:batch_or/data/list%20tile.dart';
import 'package:batch_or/model/model_isttile.dart';
import 'package:flutter/material.dart';
class chats extends StatelessWidget {
  Tileclass tileclass;
   chats({super.key, required this.tileclass});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
       body: Column(children: [
         Container(
           color: Color(0xff495057),
           padding: EdgeInsets.all(10),
           child: Row(children: [
             Container(
               margin: EdgeInsets.only(right: 20),
                 child: Icon(Icons.arrow_back_ios_new)),

             Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(70),
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('${tileclass.imgurl}'), fit: BoxFit.cover
                    ),
                  ),
                ),
             Text('   ${tileclass.personName}',style: mystyle(20,Colors.white),),
             Spacer(),
             Container(
               height: 30,
               width: 60,
                 child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                   children: [
             Icon(Icons.video_call  ,color: Colors.white,),
             Icon(Icons.call,color: Colors.white,)
             ],)
             )
           ],),

         ),
         SizedBox(
           height: 20,
         ),
         Row(mainAxisAlignment: MainAxisAlignment.center,
           children: [
           Text('Sun,jun 16',style: mystyle(15,Colors.white),)
         ],),
         Row(children: [
           Container(margin: EdgeInsets.only(top: 570),
             padding: EdgeInsets.only(right: 10),
             height: 70,
             width: 392,

             decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: 
             Radius.circular(20)), color: Color(0xff495057),
             ),
             child: Row(
               children: [
               Icon(Icons.add),
               Container(
                 padding: EdgeInsets.all(5),
                 height: 40,width: 300,
               decoration: BoxDecoration( color: Colors.black12,borderRadius: BorderRadius.circular(20)
               ),
                 child: Row(mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Icon(Icons.gif_box_outlined),
                   ],
                 ),
               ),
               Spacer(),
               Icon(Icons.camera_alt,color: Colors.white,),
               Icon(Icons.mic,color: Colors.white,)
             ],),
             
           )
         ],)
                ]
    )
      )
    );
  }
}

