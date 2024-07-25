import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';
class googlef extends StatefulWidget {
  const googlef({super.key});

  @override
  State<googlef> createState() => _googlefState();
}

class _googlefState extends State<googlef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton.small(
      //   onPressed: (){},child:
      // Icon(Icons.camera_alt_outlined),
      //   tooltip:'add',backgroundColor: Colors.pinkAccent,foregroundColor: Colors.black ,),
      // appBar: AppBar(
      //   title: Text('YouTube',style: mystyle(20,Colors.white,FontWeight.bold),),
      //   backgroundColor: Colors.red,
      // ),
      body: Column(children: [
        FloatingActionButton(onPressed: (){},child: Row(children: [
          Container(
                height: 100
                ,width: 90,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                child: Center(child: Column(
                  children: [
                    Text('13',style: mystyle(40,Colors.white,FontWeight.bold),),
                    Text('Active')
                  ],
                ))),

        ],),
          )

      ],),

    );
  }
}
