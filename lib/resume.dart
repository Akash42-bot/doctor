import 'package:batch_or/Imports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'RESUME',
            style: TextStyle(
                fontSize: 50, fontWeight: FontWeight.bold, color: Colors.brown),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10),
                      padding: EdgeInsets.all(10),
                      height: 900,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          14,
                        ),
                        color: Colors.brown,
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            height: 150,
                            width: 150,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                            child: Center(
                              child: Container(
                                height: 150,
                                width: 150,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                 image:DecorationImage(image: AssetImage('assets/image/resum.jpg'),fit: BoxFit.scaleDown)
                                ),
                                margin: EdgeInsets.only(top: 10),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                "CONTACTS",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Divider(
                            indent: 30,
                            endIndent: 30,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.phone,
                                size: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 11,
                                  ),
                                  Text(
                                    '+97577741149',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 10),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.mail,
                                size: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'akashgajmer54@gmail.com',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 15,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    'Gelephu,Bhutan',
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 40,
                                width: 54,
                              ),
                              Text(
                                'EDUCATION',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Divider(
                            indent: 30,
                            endIndent: 30,
                            color: Colors.white,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Yamuna University',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "2020-2023",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text('-Bachelors of Business Adminstration',
                                  style: TextStyle(fontSize: 15)),
                              Column(children: [Text('De-ssung Skilling',style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold))],),
                              Text('2024',style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
                              Text('-APP Development in Flutter')
                            ],
                          ),
                          Column(
                            children: [
                              Text('SKILLS',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Divider(
                                indent: 30,
                                endIndent: 30,
                                color: Colors.white,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '-Strong communication.',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '-Experience in Flutter.',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '-Team player with adaptability.',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            'Language',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Divider(
                            indent: 30,
                            endIndent: 30,
                            color: Colors.white,
                          ),
                          Row(
                            children: [
                              Text(
                                '- Dzongkha',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '- English',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '- Nepali',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '- Hindi',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '- Basic Spanish',
                                style: TextStyle(fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      )),
                  // Container(
                  Column(
                    children: [
                      Container(
                          height: 900,
                          width: 170,
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Akash Gajmer',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Marketing Manager',
                                    style: TextStyle(fontSize: 13),
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: 50,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Profile',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: 100,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '$yoga',
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Work Experience',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: 70,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'De-ssung Gurdain of Peace.',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold,fontSize: 15),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '2024',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'App Developer',
                                    style: TextStyle(
                                        color: Colors.brown,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [Text('-Object Oriented Program')],
                              ),
                              Row(children: [Text('-UI Dvelopment')],)
                            ],
                          )),
                    ],
                  ),

                  // ),
                ],
              )
            ],
          ),
        )
        //
        //
        );
  }
}
