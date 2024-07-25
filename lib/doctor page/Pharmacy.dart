import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/medicine_list.dart';
import 'package:batch_or/doctor%20data/pharmacy_list.dart';
import 'package:batch_or/doctor%20page/medicine_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
class phar extends StatefulWidget {
  const phar({super.key});

  @override
  State<phar> createState() => _pharState();
}

class _pharState extends State<phar> {
  set rating(double rating) {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffdee2e6),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              color: Color(0xff023e8a),
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
                    Text('   Pharmacy',style: TextStyle(color: Colors.white),),
                    Text('  Near by',style: TextStyle(color: Colors.white),)
                  ],),
                  Spacer(),
                  Column(children: [
                    Icon(Icons.edit,color: primaryColor,),
                    Text('Edit   ',style: TextStyle(color:Colors.white),)
                  ],)
                ],),
              ),

              ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.tune,color: Colors.white,),

                      Card(
                        color: Colors.white,
                        child: Container(
                          padding: EdgeInsets.all(2),
                            height: 35,
                            width: 90,
                            child: Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text('Location'),
                                Icon(Icons.keyboard_arrow_down_sharp)
                              ],
                            )),
                      ),

                    ],),
                ),
              ]),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('Showing Pharmacy in',style: mystyle(20,Colors.black,FontWeight.bold),),
                    Text('Thimphu',style: mystyle(20,Colors.black,FontWeight.bold),)
                  ],),
                ),

              ],),
           SizedBox(
             width: 400,
             child: ListView.builder(
               physics: NeverScrollableScrollPhysics(),
               itemCount: pharmacy.length,
               shrinkWrap: true,
               itemBuilder: (context, index) {

               return InkWell(onTap: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context) =>
                   medicine(medo: medo[index],)));
               },
                 child: Row(children: [
                   Stack(children: [
                     Container(
                       margin: EdgeInsets.only(top: 10,bottom: 30),
                       height: 400,
                       width: 390,

decoration: BoxDecoration(border: Border.all(color: Colors.black),color: Colors.white)
                     ),
                     Positioned(left:2,top: 12,
                         child:
                         Container(
                             height: 250,
                             width: 410,color: Colors.grey,child:
                         Image.asset('${pharmacy[index].imgurl}',fit:
                           BoxFit.cover,))
                     ),
                     Positioned(top: 299,
                         child: Container(
                           padding: EdgeInsets.only(left: 5),
                           height: 100,width: 390,color: Colors.white,
                           child: Column(children: [
                             Row(children: [
                               Container(
                               height: 26,width:26 ,
                                 color: Color(0xff023e8a),
                                   child: Center(child: Text('${pharmacy[index].rating}',style:
                                     mystyle(14,Colors.white,FontWeight.bold),))
                               ),
                               Text('  Very Good',style: TextStyle(color: Color(0xff023e8a))),
                               SizedBox(width: 10,),
                               Text('${pharmacy[index].review}')

                             ],),
                             Row(children: [
                               Column(crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text('${pharmacy[index].name}',style: mystyle(20,Colors.black,FontWeight.bold),),
                                   Text('${pharmacy[index].location}'),
                                 StarRating(rating: 3.5,)
                                 ],
                               )
                             ],)
                           ],),

                         ))
                   ],
                   )
                 ],),
               );
             }, ),
           )







          ],
        ),
      )
      ),
    );
  }
}
