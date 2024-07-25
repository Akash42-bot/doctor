import 'package:flutter/material.dart';
class cari extends StatefulWidget {
  const cari({super.key});

  @override
  State<cari> createState() => _carState();
}

class _carState extends State<cari> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.arrow_back_ios_new),
                    Text('Bali Experience',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    InkWell(onTap: (){print('edit');},child: Text('Edit',style: TextStyle(fontWeight: FontWeight.bold),))
                  ]
              ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10,right: 10),
                      margin: EdgeInsets.only(top: 12),
                      height: 200,
                      width:MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage('assets/image/crip.webp'),fit: BoxFit.fill),),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: InkWell(onTap: (){print('Favourite');},
                              child: Container(height: 30,
                                  width: 30,
                                  margin: EdgeInsets.only(top: 2),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),color: Colors.white),
                                  child: Center(child: Icon(Icons.favorite,color: Colors.red,))),
                            )),

                      InkWell(onTap: (){print('Trip');},
                        child: Container( margin: EdgeInsets.only(top: 57,left: 2,right: 2,),
                                             height: 100,
                                             width: double.infinity,
                                             decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20),color: Colors.white,),
                          child:Container(padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                              Row(
                                children: [Text('Epic Trip * Bali Indonesia',style: TextStyle(color: Colors.grey),),
                                Spacer(),
                                Icon(Icons.star),
                                  Text('4.8(12k)')
                              ],
                            ),
                                Row(children: [Text('Best Place Bali')],
                                ),
                                Row(children: [Text('Adventure from  Ubud to Nusa'),
                                  Spacer(),
                                  Text('\$700 ',style: TextStyle(fontWeight: FontWeight.bold),),
                                  Text('per day')
                                ],

                                )



                            ],
                            ),
                          ) ,



                          ),
                      )

                  ],
                      ),

                    ),

                  ]
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        margin: EdgeInsets.only(top: 12),
                        height: 200,
                        width:MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/image/trip.webp'),fit: BoxFit.fill),),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: InkWell(onTap: (){print('Favourite');},
                                  child: Container(height: 30,
                                      width: 30,
                                      margin: EdgeInsets.only(top: 2),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),color: Colors.white),
                                      child: Center(child: Icon(Icons.favorite,color: Colors.red,))),
                                )),

                            InkWell(onTap: (){print('Trip');},
                              child: Container( margin: EdgeInsets.only(top: 57,left: 2,right: 2,),
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),color: Colors.white,),
                                child:Container(padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [Text('Epic Trip * Bali Indonesia',style: TextStyle(color: Colors.grey),),
                                          Spacer(),
                                          Icon(Icons.star),
                                          Text('4.8(12k)')
                                        ],
                                      ),
                                      Row(children: [Text('Best Place Bali')],
                                      ),
                                      Row(children: [Text('Adventure from  Ubud to Nusa'),
                                        Spacer(),
                                        Text('\$800 ',style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text('per day')
                                      ],)




                                    ],
                                  ),
                                ) ,



                              ),
                            )

                          ],
                        ),

                      ),

                    ]
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 10,right: 10),
                        margin: EdgeInsets.only(top: 12),
                        height: 200,
                        width:MediaQuery.of(context).size.width*0.9,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,
                          image: DecorationImage(
                              image: AssetImage('assets/image/bali.webp'),fit: BoxFit.fill),),
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topRight,
                                child: InkWell(onTap: (){print('Favourite');},
                                  child: Container(height: 30,
                                      width: 30,
                                      margin: EdgeInsets.only(top: 2),
                                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),color: Colors.white),
                                      child: Center(child: Icon(Icons.favorite,color: Colors.red,))),
                                )),

                            InkWell(onTap: (){print('Trip');},
                              child: Container( margin: EdgeInsets.only(top: 57,left: 2,right: 2,),
                                height: 100,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),color: Colors.white,),
                                child:Container(padding: EdgeInsets.all(10),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [Text('Epic Trip * Bali Indonesia',style: TextStyle(color: Colors.grey),),
                                          Spacer(),
                                          Icon(Icons.star),
                                          Text('4.8(12k)')
                                        ],
                                      ),
                                      Row(children: [Text('Best Place Bali')],
                                      ),
                                      Row(children: [Text('Adventure from  Ubud to Nusa'),
                                        Spacer(),
                                        Text('\$900 ',style: TextStyle(fontWeight: FontWeight.bold),),
                                        Text('per day')
                                      ],)



                                    ],
                                  ),
                                ) ,



                              ),
                            )

                          ],
                        ),

                      ),

                    ]
                ),


              ],
            )
        )


    );
  }
}
