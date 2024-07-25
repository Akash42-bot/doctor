import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/hospital_list.dart';
import 'package:batch_or/doctor%20model/hospital_class.dart';
import 'package:batch_or/doctor%20page/hospitasl_page.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
class hosdetail extends StatelessWidget {
  HospitalClass hospitalClass;
  hosdetail({super.key, required this.hospitalClass});


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffdee2e6),
         body:
        SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  color: Colors.white,
                  height:MediaQuery.of(context).size.height*0.53,
                width: MediaQuery.of(context).size.width*0.99,
                  child:Column(
                    children: [
                      Container(
                        height: 40,
                        width: double.infinity,
                        color: primaryColor,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [InkWell(onTap: (){
                            Navigator.pop(context);
                          },
                              child: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                            Icon(Icons.ios_share_outlined,size: 30,color: Colors.white,),

                        ],
                        ),
                      ),
                      SizedBox(height: 0,),
                      Row(children: [
                        Container(
                          height: 200,width:MediaQuery.of(context).size.width*0.99 ,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),image:
                          DecorationImage(image: AssetImage('${hospitalClass.imgurl}'),fit:
                          BoxFit.cover)),
                        )
                      ],),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Column(children: [
                          Text('${hospitalClass.name}',style: mystyle(18,Colors.black,FontWeight.bold),),
                          Row(
                            children: [
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star,size: 15,),
                              Icon(Icons.star_border,size: 15,),
                            ],
                          ),
                          Row(children: [
                            Container(
                              height: 30,
                                width: 50,
                                color: Color(0xff023e8a),
                                child: Center(child: Text('${hospitalClass.ratingn}',style: mystyle(16,Colors.white),))),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('    Very Good',style: mystyle(13,Color(0xff023e8a)),),
                                Text('    509+ rated this Hospital')
                              ],
                            )

                          ],),
                          SizedBox(height: 10,),
                          Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),

                                child: Icon(Icons.location_on,color: Color(0xff9a031e),)),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Text('          Thimphu,Throm',style: mystyle(13,Colors.black,FontWeight.bold),),
                              Text('          Few walks from City Bus Center'),

                            ],),

                          ],)
                        ],),
                      )
                    ],
                  ),
          
          
                ),
              ),
              SizedBox(height: 5,),
              Row(children: [
                Container(
                  padding: EdgeInsets.all(6),
                    height:MediaQuery.of(context).size.height*0.45,
                     width: MediaQuery.of(context).size.width*0.99,
                  color: Colors.white,
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("${hospitalClass.abt}",style: mystyle(20,Colors.black,FontWeight.bold),),
                    SizedBox(height: 20,),
                    Text('${hospitalClass.abthos}',style: mystyle(18,Colors.black),)
                  ],),
                )
              ],),
              SizedBox(height: 4,),
              Row(children: [
                Container(
                  height:MediaQuery.of(context).size.height*0.125,
                  width: MediaQuery.of(context).size.width*0.99,
                  color: Colors.white,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 50,
                        width: 300,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:
                        Color(0xff023e8a)),
                        child: Center(child:
                        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text('CONTACT US',style: mystyle(20,Colors.white,
                            FontWeight.bold),
                            ),

                            Icon(Icons.call,size: 30,color: Colors.white,
                            )
                          ],
                        )
                        )
                    )
                  ],),
                )
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
