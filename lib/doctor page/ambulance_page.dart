import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
class ambulance extends StatelessWidget {
  const ambulance({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Row(
            children: [
              Center(
                child: Container(
                  width: 390,
                    height: 390,
                    child: Lottie.asset('assets/animations/amb.json')
                ).animate().slideX(duration: Duration(seconds: 6))
              ),
            ],
          ),
          Column(
            children: [

              InkWell(onTap: (){print('Hello Sir, whats your emergency!');},
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:
                  Colors.red),
                    child: Column(
                      children: [
                        Text('Call An Ambulance',style: mystyle(30,Colors.white,FontWeight.bold),
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.call,color: secondaryColor,size: 40,).animate().shake(duration: Duration(seconds:20 )),
                            Text('112',style: mystyle(30,Colors.white,FontWeight.bold),),
                          ],
                        ),

                      ],
                    )
                    
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
