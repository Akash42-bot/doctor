import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
class practice extends StatelessWidget {
  const practice({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,
      
        body:Column(children: [
          Stack(children: [
            Container(
              child: Row(children: [
                Text
                  ('Lutter alsss',style: mystyle(20),),
              ],),
              height: 20,
              width: 120,
              color: Colors.red,
            ),

          ],)
        ],)
      )
    );

  }
}
