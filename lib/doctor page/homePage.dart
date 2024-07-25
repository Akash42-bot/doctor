import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/hospital_list.dart';
import 'package:batch_or/doctor%20data/list.dart';
import 'package:batch_or/doctor%20model/hospital_class.dart';
import 'package:batch_or/doctor%20page/Pharmacy.dart';
import 'package:batch_or/doctor%20page/ambulance_page.dart';
import 'package:batch_or/doctor%20page/corona.dart';
import 'package:batch_or/doctor%20page/docpage2.dart';
import 'package:batch_or/doctor%20page/hospitasl_page.dart';
import 'package:batch_or/doctor%20page/profile_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class doctor extends StatefulWidget {
  const doctor({super.key});

  @override
  State<doctor> createState() => _doctorState();
}

class _doctorState extends State<doctor> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


        drawer: Drawer(
          backgroundColor:Color(0xff003554),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => profile()));
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:AssetImage('assets/image/pro2.jpg'),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Bryan Gospel',
                      style: mystyle(20, Colors.white),
                    ),
                    Text(
                      'bryan43@gmail.com',
                      style: mystyle(15, Color(0xffccc5b9)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Divider(
                thickness: 0.2,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Color(0xffccc5b9),
                        ),
                        Text(
                          '        Home',
                          style: mystyle(17, Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => profile()));
                      },
                      child: Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.account_box,
                              color: Color(0xffccc5b9),
                            ),
                            Text(
                              '        Profile',
                              style: mystyle(17, Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xffccc5b9),
                        ),
                        Text(
                          '        Rate Us',
                          style: mystyle(17, Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.feedback,
                          color: Color(0xffccc5b9),
                        ),
                        Text(
                          '        Feedback',
                          style: mystyle(17, Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.feedback_outlined,
                          color: Color(0xffccc5b9),
                        ),
                        Text(
                          '        FAQ',
                          style: mystyle(17, Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.info,
                          color: Color(0xffccc5b9),
                        ),
                        Text(
                          '        About Us',
                          style: mystyle(17, Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(
                      style: mystyle(30, primaryColor, FontWeight.bold),
                      children: [
                    TextSpan(text: 'Doc'),
                    TextSpan(
                        text: 'Time',
                        style: mystyle(30, secondaryColor, FontWeight.bold)),
                    TextSpan(text: '+        '),
                  ])
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///AppBAR

                SizedBox(
                  height: 12,
                ),

                ///first row image and text
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.45,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/doctors.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            topLeft: Radius.circular(40)),
                        border: Border.all(color: primaryColor),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: MediaQuery.of(context).size.width * 0.45,
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Stay Healty!',
                            style: mystyle(30, Colors.black, FontWeight.bold),
                          ),
                          Text(
                            'Stay Safe',
                            style: mystyle(25, Colors.black, FontWeight.bold),
                          ),
                          Text(
                            'we are here to help you 24/7 with the best treatment in the world',
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: primaryColor,
                              ),
                              Text(
                                '  Meet Online',
                                style: mystyle(
                                    15, secondaryColor, FontWeight.bold),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Services',
                      style: mystyle(20, primaryColor, FontWeight.bold),
                    ),
                    Spacer(),
                    Text('See All')
                  ],
                ),

                ///animated Icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => corona(),
                        ));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/image/corona.gif')),
                            Text('Covid-19')
                          ],
                        ),
                      ),
                    ),
                    InkWell(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                        ambulance(),));
                    },
                      child: Column(
                        children: [
                          Image(image: AssetImage('assets/image/ambulance.gif')),
                          Text('Ambulance')
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) => hospital(hospitalClass:
                        // ));
                      },
                      child: InkWell(onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder:(context) =>
                          hospital(),));
                      },
                        child: Column(
                          children: [
                            Image(image: AssetImage('assets/image/location.gif')),
                            Text('Location')
                          ],
                        ),
                      ),
                    ),
                    InkWell(onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                        phar(),));
                    },
                      child: Column(
                        children: [
                          SizedBox(
                              height: 50,
                              child: Image(
                                  image: AssetImage(
                                'assets/image/capsule.gif',
                              ))),
                          Text('Medicine')
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),

                ///toprated doc text
                Row(
                  children: [
                    Text(
                      'Top Rated Doctor,',
                      style: mystyle(20, primaryColor, FontWeight.bold),
                    ),
                    Spacer(),
                    Text('See All')
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                /// doc info
                GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: doclist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.9,
                    ),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (builder) =>
                                  details(modelclass: doclist[index])));
                        },
                        child: Card(
                          elevation: 4,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color(0xfff4effa),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Hero(
                                  tag: "${doclist[index].name}",
                                  child: CircleAvatar(
                                    maxRadius: 40,
                                    backgroundColor: Color(0xffebe0f5),
                                    backgroundImage:
                                        AssetImage('${doclist[index].imgUrl}'),
                                  ),
                                ),
                                Text(
                                  '${doclist[index].name}',
                                  style: mystyle(
                                      20, Colors.black, FontWeight.bold),
                                ),
                                Text(
                                  ' ${doclist[index].specialilty}',
                                  style: mystyle(14, Colors.black),
                                ),
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 22,
                                  width: 55,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                      ),
                                      Text(
                                        '${doclist[index].rating}',
                                        style: mystyle(15, secondaryColor,
                                            FontWeight.bold),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
