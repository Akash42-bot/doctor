import 'package:batch_or/Imports.dart';
import 'package:batch_or/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class sat extends StatefulWidget {
  const sat({super.key});

  @override
  State<sat> createState() => _satState();
}

class _satState extends State<sat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Padding(
    padding: const EdgeInsets.all(0),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          height: 270,
          width: MediaQuery.of(context).size.width*0.9,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xffe9ecef),),
          child: Column(children: [
          Row(children: [
            Text('June 28th')
          ],),
            Row(children: [
              Text('Hey, Wesley',style: mystyle(25,Colors.black,FontWeight.bold),),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(13),image:
                DecorationImage(image: NetworkImage('https://imgs.search.brave.com/kh_BJf5rXbV4PfooF6EeWHwtNhdxMjUCCoglAJ592_o/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4x/Lmljb25maW5kZXIu/Y29tL2RhdGEvaWNv/bnMvdXNlci1hdmF0/YXItMjAvNjQvMjUt/U2FpbG9yLTY0LnBu/Zw'),fit:
                BoxFit.fill),color: Colors.blueGrey,)
              )
            ],),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                  height: 100
                  ,width: 90,
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
                  child: Center(child: Column(
                    children: [
                      Text('13',style: mystyle(40,Colors.white,FontWeight.bold),),
                      Text('Active')
                    ],
                  ))),
              Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text('15',style: mystyle(30,Colors.black,),),
                    Text('Pending')
                  ],
                ),
              ),
              Container(margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: [
                    Text('21',style: mystyle(30,Colors.black,),),
                    Text('Completed')
                  ],


                ),
              )
          
            ],)

          
            ],),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          Container(
            height: 500,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),color: Color(0xffe9ecef),image:
            DecorationImage(image: NetworkImage('https://imgs.search.brave.com/U5DbuSgiX5GGMjsaWQX8ffFnLLpgL4HmwqKDovzUaCc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93d3cu/cG5nbWFydC5jb20v/ZmlsZXMvMTAvNS1P/ZmYtUE5HLVBpYy5w/bmc'),fit:
            BoxFit.fill)
            ),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Container(height: 100,
                      width: 100,
                      margin: EdgeInsets.only(top: 2),
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20,),color: Colors.white),
                      child: Center(child: Column(
                        children: [
                          Text('12',style: mystyle(40  ,Colors.black,FontWeight.bold),),
                          Text('Enrolled',)
                        ],
                      ),))),

              Container( margin: EdgeInsets.only(top: 190,left: 2,right: 2,),
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color:Colors.blue.withOpacity(0.9,)),
                child:Container(padding: EdgeInsets.all(10),

                  child: Column(
                    children: [
                      Row(
                        children: [Text('How to grow your',style:mystyle(20,Colors.white,FontWeight.bold)),
                        Spacer(),
                          Icon(Icons.favorite_outline_outlined,color: Colors.white,size: 40,),

                        ],
                      ),
                      Row(children: [Text('Facebook Page',style:mystyle(20,Colors.white,FontWeight.bold))],
                      ),
                      Row(children: [Text('Follow these easy and ',style:mystyle(15,Colors.white,FontWeight.bold),)
                      ],
                      ),
                      Row(children: [Text('simple steps',style:mystyle(15,Colors.white,FontWeight.bold))
                      ],),
                      Row(children: [
                        MaterialButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (builder)
                        =>animation()));},
                          child: Container(
                            margin: EdgeInsets.only(left: 200),
                            height: 50,
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),color:Colors.blue.withOpacity(0.9,),border:
                            Border.all(color: Colors.white)),
                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                              Text('Enroll',style: mystyle(15,Colors.white),),
                              Icon(Icons.arrow_forward,color: Colors.white,)
                            ],),
                          ),
                        )
                      ],),



                    ],

                  ),
                ) ,


                        ),


            ],)
          )
      ],
    ),]
  )

    )) ;
  }
}
