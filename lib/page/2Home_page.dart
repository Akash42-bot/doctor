import 'package:batch_or/Imports.dart';
import 'package:batch_or/data/2product_list.dart';
import 'package:batch_or/grid.dart';
import 'package:batch_or/page/2details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class harry extends StatefulWidget {
  const harry({super.key});

  @override
  State<harry> createState() => _harryState();
}

class _harryState extends State<harry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xff2b2d42),
        leading:Icon(Icons.menu,color: Colors.white,size: 40,),
        actions: [

          Container(margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.shopping_cart,color: Colors.white,)),

        Container(margin: EdgeInsets.only(right: 5),
            child: Icon(Icons.notifications,color: Colors.white,)),
        ],




      ),
      backgroundColor: Color(0xff2b2d42),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.only(top: 50),
                child: Column(
                    children: [Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(bottom: 10),
                      child: Align(alignment: Alignment.centerLeft,
                          child: Icon(Icons.search,color: Colors.white,)),
                      height: 40,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius:
                      BorderRadius.circular(10)
                      ),

                    ),




                      Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 10),
                              child: Text(
                                'Explore',
                                style: GoogleFonts.notoSerif(
                                    fontSize: 40, fontWeight: FontWeight.bold,color: Colors.white),
                              ),
                            ),

                          ]),

                      GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 320,
                          childAspectRatio: 0.7,
                        crossAxisSpacing: 2,
                        mainAxisSpacing: 30
                        ),
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: novel.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (builder)=>
                                  noveldetails(novelclass:novel[index]))
                            );
                          },
                            child: Card(
                              color: Color(0xfff2e9e4),
                              elevation: 4,
                              child: Align(alignment: Alignment.topCenter,
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  child: Column(children: [
                                    SizedBox(
                                      height: 220,
                                    width: 178,
                                    child: Image(image: AssetImage('${novel[index].imgurl}'),fit:
                                      BoxFit.fill,)

                                    ),
                                    Text('${novel[index].bookName}',style: mystyle(15,Colors.black,
                                    FontWeight.bold),),
                                    Text('${novel[index].author}')
                                  ],),



                                  ),
                              ),


                            ),
                          );



                      },

                      )

                    ])
            )
        )
    );
  } }