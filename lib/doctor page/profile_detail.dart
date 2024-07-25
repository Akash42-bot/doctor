import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          // physics: BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(color: Colors.blueGrey
              // image: DecorationImage(image: AssetImage('assets/image/back.webp'),fit:
              // BoxFit.cover)
            ),
            child: Column(
              children: [
                Container(
                  height: 50,width: double.infinity,color: Colors.white,
                  child:  Row(children: [
                    InkWell(onTap: (){
                      Navigator.pop(context);
                    },
                      child: Container(
                        height: 50,width: 265,
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios_new,color: Colors.black,),
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

                          ],
                        ),
                      ),
                    )
                  ],),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 170,
                    width: 170,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('assets/image/pro2.jpg'),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.black)),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Bryan Gospel',
                      style: mystyle(20,Colors.white, FontWeight.bold,),
                    ),
                    Text('bryan43@gmail.com',style: mystyle(17,Colors.white,FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 150,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xff0077b6),
                      borderRadius: BorderRadius.circular(20),border:
                  Border.all(color: Colors.white)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_box_outlined,color: Colors.white,),
                          Text('   Personal Details',style: mystyle(17,Colors.white,FontWeight.bold))
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Age : 45 yrs',style: mystyle(17,Colors.white,FontWeight.bold)),
                        Text('Gender : Male ',style: mystyle(17,Colors.white,FontWeight.bold))
                      ],
                        ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text('Blood Group : B-',style: mystyle(16,Colors.white,FontWeight.bold),),
                       Text('Weight:    50kg',style: mystyle(16,Colors.white,FontWeight.bold))

                      ],)
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xff0077b6),
                      borderRadius: BorderRadius.circular(20),border:
                  Border.all(color: Colors.white)
                  ),
                  child:  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Height:               5.5ft',style: mystyle(16,Colors.white,FontWeight.bold)),
                    SizedBox(height: 5,),
                    Text('Nationality :       Indian',style: mystyle(16,Colors.white,FontWeight.bold)),
                      SizedBox(height: 5,),

                      Text('Contact NO :    +91577741126 ',style: mystyle(16,Colors.white,FontWeight.bold)),
                  ],),

                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 20),
                  height: 130,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Color(0xff0077b6),
                      borderRadius: BorderRadius.circular(20),border:
                  Border.all(color: Colors.white)),
                  child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Martial Status : Married'  ,style: mystyle(17,Colors.white,FontWeight.bold)),
                      Gap(5),
                      Text('Disease :   Severe Dengue' ,style: mystyle(17,Colors.white,FontWeight.bold))

                  ],),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
