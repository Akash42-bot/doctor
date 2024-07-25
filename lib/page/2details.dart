import 'package:batch_or/Imports.dart';
import 'package:batch_or/model/2model_class.dart';
import 'package:batch_or/page/2readmore.dart';
import 'package:flutter/material.dart';
class noveldetails extends StatelessWidget {
  Novelclass  novelclass;
   noveldetails({super.key,required this.novelclass});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfff2e9e4),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 450,
                width: MediaQuery.of(context).size.width*0.99,
                color:Color(0xff2b2d42),
                child: Column(children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                InkWell(onTap: (){
                  Navigator.pop(context);
                },
                    child: Icon(Icons.arrow_back_ios_new,color: Colors.white,),),
                Icon(Icons.bookmark_outline,color: Colors.white,),
        
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      child: Image.asset('${novelclass.imgurl}'),
                      margin: EdgeInsets.only(top: 25,bottom: 10),
                      height: 300,
                      width: MediaQuery.of(context).size.width*0.7,
        
                    )
                  ],),
                  Column(children: [
                    Text('${novelclass.bookName}',style: mystyle(15,Colors.white,FontWeight.bold),),
                    Text('${novelclass.author}',style: mystyle(12,Colors.white),)
        
              ]
              ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Icon(Icons.favorite,color: Color(0xffa4161a),size: 30,)
                  ],)
        
              ]
              )
              ),
              Column(children: [
                Align(alignment: Alignment.topLeft,
                    child: Text('SUMMARY',style: mystyle(20,Colors.black,FontWeight.bold),))
              ],),
              Text('${novelclass.summary}'),
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                InkWell(onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder:
                  (builder)=> readmore(read: novelclass)));
                },
                  child: Container(
                    child: Center(child: Text('READ NOW',style: mystyle(15,Colors.white,FontWeight.bold),)),
                    height: 50,
                    width: 130,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)
                   ,color: Color(0xff2b2d42)),
                  ),
                )
              ],
              )
            ],
          ),
        ),
      )
    );
  }
}
