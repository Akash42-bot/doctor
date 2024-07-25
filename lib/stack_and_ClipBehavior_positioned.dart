import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/hospital_list.dart';
import 'package:flutter/material.dart';

class scp extends StatelessWidget {
  const scp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 40),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage('assets/image/doctor1.png')),
                            border: Border.all(color: Colors.blue, width: 10)),
                      ),
                      Positioned(
                        right: -90,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.white,
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/image/doctor2.png')),
                              border:
                                  Border.all(color: Colors.black, width: 10)),
                        ),
                      ),
                      Positioned(
                        right: -187,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.redAccent, width: 10),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/image/doctor3.png'))),
                        ),
                      ),
                      Positioned(
                        right: -160,
                        top: 60,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.white12,
                              border:
                                  Border.all(color: Colors.yellow, width: 10),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/image/doctor4.png'))),
                        ),
                      ),
                      Positioned(
                        right: -50,
                        top: 60,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.white12,
                              border:
                                  Border.all(color: Colors.green, width: 10),
                              image: DecorationImage(
                                  image:
                                      AssetImage('assets/image/doctor5.png'))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 200,
                    child: PageView.builder(
                      itemCount: all_details.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 300,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      '${all_details[index].imgurl}'),
                                  fit: BoxFit.cover),
                              border: Border.all(color: Colors.black)),
                        );
                      },
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      text: TextSpan(
                          style: mystyle(30, primaryColor, FontWeight.bold),
                          children: [
                        TextSpan(
                            text: 'PAG', style: TextStyle(color: Colors.red)),
                        TextSpan(
                            text: 'EV',
                            style:
                                mystyle(30, secondaryColor, FontWeight.bold)),
                        TextSpan(text: 'IW'),
                      ])),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
