import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/hospital_list.dart';
import 'package:batch_or/doctor%20data/list.dart';
import 'package:batch_or/doctor%20model/hospital_class.dart';
import 'package:batch_or/doctor%20page/hospital_page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating/flutter_rating.dart';
class hospital extends StatelessWidget {
 hospital({super.key,});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff023e8a),
        body:
        SingleChildScrollView(
          child: Column(children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.only(top: 10),
              height: 55,
              width: MediaQuery.of(context).size.width*0.97,
              decoration: BoxDecoration(border: Border.all(color: Colors.white)),
              child: Row(children: [
                InkWell(onTap: (){
                  Navigator.pop(context);
                },
                    child: InkWell(onTap: (){
                      Navigator.pop(context);
                    },
                        child: Icon(Icons.arrow_back,color: Colors.white,))),
                
                Column(children: [
                  Text('  Hospitals',style: TextStyle(color: Colors.white),),
                  Text('  Near by',style: TextStyle(color: Colors.white),)
                ],),
                Spacer(),
                Column(children: [
                  Icon(Icons.edit,color: primaryColor,),
                  Text('Edit  ',style: TextStyle(color:Colors.white),)
                ],)
              ],),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.tune,color: Colors.white,),
              Card(
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.all(3),
                    height: 30,
                    width: 99,
                    child: Row(
                      children: [
                        Text(' Speciality'),
                        Icon(Icons.keyboard_arrow_down_rounded)
                      ],
                    )),
              ),
              Card(
                color: Colors.white,
                child: Container(padding: EdgeInsets.all(3),
                    height: 30,
                    width: 92,
                    child: Row(
                      children: [
                        Text(' Location'),
                        Icon(Icons.keyboard_arrow_down_sharp)
                      ],
                    )),
              ),
                
            ],),
          Container(
            padding: EdgeInsets.all(10),
            height: 80,
            width: double.infinity,
            color: Color(0xffdee2e6),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Showing Hospitals in ',style: mystyle(20,Colors.black,FontWeight.bold),),
                Text('Thimphu',style: mystyle(20,Colors.black,FontWeight.bold),)
              ],),
          ),
                
          Container(
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  width: 390,
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: all_details.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                    return Column(
                      children: [

                       InkWell(onTap: (){
                         Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                           hosdetail(hospitalClass: all_details[index],),));
                       },
                         child: Card(
                           elevation: 20,
                           child: Container(
                             margin: EdgeInsets.all(5),
                            padding: EdgeInsets.only(top: 0),
                             height: 400,
                             width: double.infinity,
                             decoration: BoxDecoration(border:
                             Border(bottom: BorderSide(),),
                             ),
                             child: Column(
                               children: [
                                 SizedBox(
                                     width: 450,
                                     child: Align(alignment: Alignment.topCenter,
                                         child: Image(image:
                                         AssetImage('${all_details[index].imgurl}'),fit:
                                           BoxFit.cover,
                                         )
                                     )
                                 ),

                                 SizedBox(
                                   height: 5,
                                 ),
                                 Row(
                                   children: [
                                     Container(
                                         margin: EdgeInsets.only(left: 5),
                                         height: 25,
                                         width: 30,
                                         color: Color(0xff023e8a),
                                         child: Center(
                                           child: Text(
                                             '${all_details[index].ratingn}', style: TextStyle(color: Colors.white),),
                                         )),
                                     Text('  very Good',
                                       style: TextStyle(color: Color(0xff023e8a)),),
                                     Text('  (${all_details[index].rating})', style: mystyle(10),)
                                   ],
                                 ),
                                 Column(crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Align(alignment: Alignment.bottomLeft,
                                       child: Text(
                                           '${all_details[index].name}',style: TextStyle(fontWeight: FontWeight.bold),),
                                     ),
                                     Text('Thimphu ,Throm'),
                                     Row(mainAxisAlignment: MainAxisAlignment.end,
                                       children: [
                                         StarRating(rating: 4,),
                                       ],
                                     )
                                   ],)
                               ],),


                           ),
                         )
                       ),

                        //
                        //
                        // )

                    ],);
                  }, ),
                ),
              ],
            ),
          ),
                
                ],),
        ),
      
      ),
    );
  }
}


