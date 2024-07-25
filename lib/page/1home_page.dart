import 'package:batch_or/Imports.dart';
import 'package:batch_or/data/1product_list.dart';
import 'package:batch_or/page/1details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}

class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('THE STORE',style: GoogleFonts.dancingScript(color: Colors.pinkAccent,fontWeight: FontWeight.bold,fontSize: 40 )),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'New Arrival',
                    style: mystyle(30, Colors.black, FontWeight.bold),
                  )),
              SizedBox(
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: allProduct.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (builder) => productdetail(
                                  modelclass: allProduct[index]
                              )
                          )
                          );
                        },
                        child: Card(
                          elevation: 10,
                          child: Container(
                            padding: EdgeInsets.only(top: 3),
                            height: 350,
                            width: MediaQuery.of(context).size.width*0.7,
                            decoration: BoxDecoration(color: Colors.black,border: Border.all(color: Colors.black)),
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 280,
                                    width: MediaQuery.of(context).size.width*0.5,
                                    child: Image.asset(
                                      '${allProduct[index].imgUrl}',
                                      fit: BoxFit.fill,
                                    )),
                                Text('${allProduct[index].productName},',style: mystyle(15,Colors.white,FontWeight.bold),),
                                Text('${allProduct[index].price}',style: TextStyle(color: Colors.white),)

                              ],
                            ),
                          ),
                        ),
                      );

                      // Text('${allProduct[index].productName}')
                    }),
              ),
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: allProduct.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 4,
                      child: Container(
                        height: 200,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          children: [
                            SizedBox(
                                height: 150,
                                width: 100,
                                child: Image.asset(
                                  '${allProduct[index].imgUrl}',
                                  fit: BoxFit.fill,
                                )),
                            Container(
                              margin: EdgeInsets.only(left: 10,top: 60),
                              child: Column(
                                children: [
                                  Text(
                                    '${allProduct[index].productName}',
                                    style: mystyle(
                                        20, Colors.black, FontWeight.bold),
                                  ),
                                  Text(
                                    '${allProduct[index].price}',
                                    style: mystyle(
                                        15, Colors.black, FontWeight.bold),
                                  ),
                                  

                                  //
                                  Column(children: [
                                    Text('${allProduct[index].Size}')
                                  ],),


                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  })
            ])));
  }
}
