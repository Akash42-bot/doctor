import 'package:batch_or/Imports.dart';
import 'package:batch_or/hotel_data/hotel_list.dart';
import 'package:batch_or/hotel_data/place_list.dart';
import 'package:batch_or/hotel_page/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class hotproj extends StatelessWidget {
  const hotproj({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
              Row(
                children: [
                  Text('Explore',style: mystyle(40,Color(0xff023e8a),FontWeight.bold),),
                 
                  Spacer(),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [Container(
                        child: Icon(Icons.notifications_none,size: 30,)
                    ),
                      Positioned(
                        left: 13,top: 5,
                        child: Container(
                          height: 10,width: 10,
                          decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red,border:
                          Border.all(color: Colors.white,width: 20)),

                        ),
                      )
                 ] )
                ],
              ),
                Gap(15),
                Row(
                  children: [
                    Container(height: 30,width: 300,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(
                      color: Colors.black
                    )
                    ),
                      child: Row(children: [
                        Icon(Icons.search),
                        Text('Search')
                      ],),
                    ),
                    Spacer(),
                    Container(height: 30,width: 30,
                    decoration: BoxDecoration(borderRadius: 
                        BorderRadius.circular(5),color: Color(0xff023e8a)),
                      child: Icon(Icons.tune,color: Colors.white,),
                    )
                  ],
                ),
                Gap(20),
                Column(children: [
                  SizedBox(
                    width: double.infinity,
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: place.length,
                        shrinkWrap: true,
                        // scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>
                                details_hot(difhot: difhot)));
                          },
                            child: Card(
                              elevation: 10,
                              color: Colors.black12,
                              shadowColor: Colors.blueGrey,
                              margin: EdgeInsets.only(bottom: 30),
                              child: Stack(
                                children:[ Container(
                                  padding: EdgeInsets.all(5),
                                  margin: EdgeInsets.all(0),
                                  height:
                                  MediaQuery.of(context).size.height*0.3,
                                width:  MediaQuery.of(context).size.width*0.9,
                                 decoration: BoxDecoration(borderRadius:
                                     BorderRadius.circular(20),image: DecorationImage(image: AssetImage('${place[index].imgurl}'),fit:
                                 BoxFit.fill)
                                 ),
                                ),
                                  Positioned(
                                    top: 120,
                                      child:
                                      Center(
                                        child: Container(
                                          padding: EdgeInsets.all(20),
                                          margin: EdgeInsets.all(10),
                                          height: 100,
                                          width: 336,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20), color: Colors.black54,
                                          ),
                                          child: Text('${place[index].name}',style: GoogleFonts.aBeeZee(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                         ),
                                      ))
                             ] ),
                            ),
                          );
          
                        },),
                  )
                ],)
            ],),
          ),
        )
      ),
    );
  }
}
