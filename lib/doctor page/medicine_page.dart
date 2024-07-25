import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/medicine_list.dart';
import 'package:batch_or/doctor%20data/pharmacy_list.dart';
import 'package:batch_or/doctor%20model/medicine_class.dart';
import 'package:batch_or/doctor%20model/pharmacy_class.dart';
import 'package:batch_or/doctor%20page/medicine_page2.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class medicine extends StatefulWidget {
  List medo;

  medicine({super.key, required this.medo});

  @override
  State<medicine> createState() => _medicineState();
}

class _medicineState extends State<medicine> {
  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'assets/image/ban.jpg',
      'assets/image/sos.webp',
      'assets/image/3.jpg',
      'assets/image/5.jpg',
    ];
    int _curentPage = 0;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                height: 60,
                width: double.infinity,
                color: Color(0xff023e8a),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                    ),
                    Container(
                      padding: EdgeInsets.all(7),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          Text(
                            'Search',
                            style: mystyle(15, Colors.white),
                          )
                        ],
                      ),
                      height: 40,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text('Sort BY'),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [Icon(Icons.tune), Text('Filter')],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Text('Weight'),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    CarouselSlider(
                        items: imgList.map((e) {
                          return SizedBox(
                              width: 500,
                              child: Image.asset(e));
                        }).toList(),

                        options: CarouselOptions(
                            initialPage: 0,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 2),
                            enlargeCenterPage: true,
                            onPageChanged: (value, _) {
                              setState(() {
                                _curentPage = value;
                              });
                            })),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < imgList.length; i++)
                          Container(
                            margin: EdgeInsets.all(5),
                            height: 7,
                            width: i == _curentPage ? 35 : 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: i == _curentPage
                                    ? Colors.black
                                    : Colors.grey),
                          )
                      ],
                    ),
                    Gap(10),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'New Products                         '
                            '                   ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff023e8a)),
                          ),
                          // Text('Pain Relief                                    '
                          //     '                  ',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color:Color(0xff333533)))
                        ],
                      ),
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      itemCount: widget.medo.length,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 320,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          padding: EdgeInsets.all(2),
                          // decoration: BoxDecoration(image: DecorationImage(image: AssetImage('${medo[index].imgurl}'),fit:
                          // BoxFit.contain)),
                          margin: EdgeInsets.all(10),
                          color: Colors.white,
                          child: Card(
                            elevation: 10,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          height: 150,
                                          width: 164,
                                          child: Image.asset(
                                            '${widget.medo[index].imgurl}',
                                            fit: BoxFit.contain,
                                          ),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                                builder: (builder) => buynow(
                                                      medicineClass:
                                                          widget.medo[index],
                                                    )));
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(left: 8),
                                        decoration: BoxDecoration(
                                            color: Color(0xff023e8a),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20),
                                            )),
                                        height: 137,
                                        width: 164,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${widget.medo[index].name}',
                                              style: mystyle(17, Colors.white,
                                                  FontWeight.bold),
                                            ),
                                            Text(
                                              '${widget.medo[index].weight}',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  '${widget.medo[index].no}',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  width: 32,
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 49,
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      color: Colors.blue),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '${widget.medo[index].price}',
                                                        style: mystyle(
                                                            15,
                                                            Colors.white,
                                                            FontWeight.bold),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Card(
                                                  color: Colors.orangeAccent,
                                                  elevation: 9,
                                                  child: Container(
                                                      height: 30,
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(20),
                                                          color: Colors
                                                              .orangeAccent),
                                                      child: Center(
                                                          child: Text(
                                                              'Add To Cart'))),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
