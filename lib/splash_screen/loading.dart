import 'dart:async';

import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20page/bottom_bar.dart';
import 'package:batch_or/doctor%20page/homePage.dart';
import 'package:batch_or/doctor%20page/hospitasl_page.dart';
import 'package:batch_or/page/1home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState(){
    Timer(Duration(seconds: 5), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (builder)
    =>bottom())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(     mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,width: 400,
              child:
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Lottie.asset('assets/animations/loading.json'),


              ],),
            ),
            Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
              RichText(
                  text: TextSpan(
                      style: mystyle(40, primaryColor, FontWeight.bold),
                      children: [
                        TextSpan(text: '       Doc'),
                        TextSpan(
                            text: 'Time',
                            style: mystyle(40, secondaryColor, FontWeight.bold)),
                        TextSpan(text: '+        '),
                      ])
               ).animate().shimmer(duration: Duration(seconds: 8)).scale(duration: Duration(seconds: 3)),
                Text('Powered by; Akash  ',style: mystyle(14),).animate().fade().scale(duration: Duration(seconds: 5))

            ],)

          ],
        ),

      )
    );
  }
}
