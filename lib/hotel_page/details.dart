import 'package:batch_or/Imports.dart';
import 'package:batch_or/hotel_data/hotel_list.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class details_hot extends StatefulWidget {
  List difhot;
   details_hot({super.key,required this.difhot});

  @override
  State<details_hot> createState() => _details_hotState();
}

class _details_hotState extends State<details_hot> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
        Row(
        children: [
        Text('Hotels',style: mystyle(40,Color(0xff023e8a),FontWeight.bold),),

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
        ])
            ]),
            Gap(15),
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(height: 30,width: 360,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(0),border: Border.all(
                      color: Colors.black
                  )
                  ),
                  child: Row(children: [
                    Icon(Icons.search),
                    Text('Search')
                  ],),
                ),

              ],
            ),
            Gap(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Container(height: 30,width: 90,decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Text('  Sort By ',),
                    Icon(Icons.keyboard_arrow_down_sharp)

                  ],
                ),
              ),
              Container(height: 30,width: 90,decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Text('  Filter ',),
                    Icon(Icons.keyboard_arrow_down_sharp)

                  ],
                ),
              ),
              Container(height: 30,width: 90,decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.black)),
                child: Row(
                  children: [
                    Text('  Price ',),
                    Icon(Icons.keyboard_arrow_down_sharp)

                  ],
                ),
              )
            ],
            ),Gap(2),
            Divider(),
            Row(children: [
              Stack(
                children:[ Container(
                  height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*0.92,
                  color: Colors.black,
                  
                ),
                  Positioned(
                    bottom: 136,
                    child: Container(height:270,width: MediaQuery.of(context).size.width*0.92,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/image/bali.webp'))
                    ),
                    ),
                  ),
                  Positioned(left: 329,top: 5,
                    child: Container(height: 30, width: 30,
                      decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),
                      child: Icon(Icons.favorite,color: Colors.red,),
                    ),
                  )

             ] )
            ],),
            ListView.builder(
              itemCount: difhot.length,

                itemBuilder: (context, index) {
                return Container(

                ) ;

                },)
          ]),
      )
      ),
    );
  }
}
