import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class corona extends StatelessWidget {
  const corona({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SingleChildScrollView(
          child: Column(children: [
            Row(children: [
          InkWell(onTap: (){
            Navigator.pop(context);
          },
            child: Container(
            height: 50,width: 265,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_new),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.white,),
                    margin: EdgeInsets.all(10),
                    height: 50,width: 110,
                    child: RichText(text: TextSpan(style: mystyle(20,primaryColor,
                        FontWeight.bold),
                        children:[ TextSpan(text: '  Doc'),
                          TextSpan(text:'Time',style: mystyle(20,
                              secondaryColor,
                              FontWeight.bold)),
                          TextSpan(text: '+'),
                        ])
                    ),
                  ),
              ],)),
          )
          ],),
            Container(
              child: Image(image:AssetImage('assets/image/original.webp'),
              fit: BoxFit.cover,).animate().fade(duration: Duration(milliseconds: 150)),
              height: 300,
              width: MediaQuery.of(context).size.width*0.99,

            ),
          Container(padding: EdgeInsets.all(15),
              child:
              Column(
                children: [
                  Text('Bhutan Scripts Rare COVID-19 Success Story',style: mystyle(30,Colors.black,FontWeight.bold),
                  ).animate().fade(duration: Duration(milliseconds: 150)),
                  SizedBox(height: 10,),
                  Text('$newa',style: mystyle(17),).animate().fade(duration: Duration(milliseconds: 150)),
                  SizedBox(height: 5,),
                  Text('$newb',style: mystyle(17),
                  ).animate().fade(duration: Duration(milliseconds: 150)),
                  SizedBox(height: 10,),
                  Image(image: AssetImage('assets/image/cov2.jpg')),
                  Text('$wash'),
                  SizedBox(height: 20,),
                  Text('$newc',style: mystyle(17),)
                ],
              ),
          ),

                ]),
        )
      ),
    );
  }
}
