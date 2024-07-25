import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/list.dart';
import 'package:batch_or/doctor%20model/model_class.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  Modelclass modelclass;

  details({super.key, required this.modelclass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff00a896),
        appBar: AppBar(
          title: Center(
            child: RichText(
                text: TextSpan(
                    style: mystyle(30, primaryColor, FontWeight.bold),
                    children: [
                  TextSpan(text: 'Doc'),
                  TextSpan(
                      text: 'Time',
                      style: mystyle(30, secondaryColor, FontWeight.bold)),
                  TextSpan(text: '+'),
                ])),
          ),
          actions: [
            Icon(
              Icons.more_vert_sharp,
              size: 30,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            ///image container
            Container(
                height: 250,
                width: double.infinity,
                color: Color(0xff00a896),
                child: Hero(
                  tag: '${modelclass.name}',
                  child: Image(image: AssetImage('${modelclass.imgUrl}')
                  ),
                )
            ),

            Container(
              padding: EdgeInsets.only(top: 20,left: 20,right: 20),
              height: 450,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white),
              child: Column(
                children: [
                  Row(
                    children: [
                      ///name,spec,pay
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '${modelclass.name}',
                            style:
                                mystyle(25, Colors.black, FontWeight.bold),
                          ),
                          Text(
                            '${modelclass.specialilty}',
                            style: mystyle(15, Colors.black),
                          )
                        ],
                      ),
                      Spacer(),
                      Center(
                          child: Text(
                        '${modelclass.payment}',
                        style: mystyle(25, secondaryColor, FontWeight.bold),
                      ))
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ///abt doc heading
                  Row(
                    children: [
                      Text(
                        'About Doctor',
                        style: mystyle(20, primaryColor, FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ///abt doc
                  Column(
                    children: [
                      Text(
                        '${modelclass.aboutDoc}',
                        style: mystyle(15,Colors.black),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ///patient,exp,rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Text(
                                'Patients',
                                style: mystyle(
                                    15, Colors.black, FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.manage_accounts,
                                    color: Colors.blue,
                                  ),
                                  Text('  ${modelclass.patientNo}' '+')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Text(
                                'Experience',
                                style: mystyle(
                                    15, Colors.black, FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    color: Colors.blue,
                                  ),
                                  Text('  ${modelclass.experience}')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        color: Colors.white,
                        child: Container(
                          height: 60,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Text(
                                'Rating',
                                style: mystyle(
                                    15, Colors.black, FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Text('  ${modelclass.rating}' ' yrs')
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                    width: double.infinity,
                    child: ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: modelclass.appointmentTime.length,
                      shrinkWrap: true,

                      itemBuilder: (context, index) {
                      return Row(
                        children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 70,width: 150,
                          decoration: BoxDecoration(border: Border.all(color: Colors.black),borderRadius:
                          BorderRadius.circular(20),color: Colors.white),
                        child:
                          Card(
                            color: Colors.white,
                            elevation: 5,
                            child: Column(
                              children: [
                                Text('${modelclass.appointmentDays[index]}',style: mystyle(20,Colors.black,FontWeight.bold),),
                                Text('${modelclass.appointmentTime[index]}',)
                              ],
                            ),
                          ),

                        ),

                      ],);

                    },
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    InkWell(onTap: (){},
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: primaryColor,),
                        height: 40,width: 300,
                          child: Center(child: Text('Make An Appointment',style: mystyle(20,Colors.white,FontWeight.bold),))),
                    )
                  ],)
               ]
            ))
          ]),
        ));
  }
}

