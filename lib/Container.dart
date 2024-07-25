import 'package:flutter/material.dart';
class Contain extends StatelessWidget {
  const Contain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('YOUTUBE',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            backgroundColor:Colors.black,
          centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(20),
            color: Colors.red,
          ),
            margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(18),
          child:
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white

                        ),
                      ),
                      Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white

                              ),
                            ),
                            Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                          ],
                        )
                      ],
                    )
                  ],
                  ),

                ],
              ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white

                        ),
                      ),
                      Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white

                                ),
                              ),
                              Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),

                ],
              )


            ],
          ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white

                            ),
                          ),
                          Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white

                                    ),
                                  ),
                                  Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  )


                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white

                            ),
                          ),
                          Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white

                                    ),
                                  ),
                                  Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  )


                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white

                            ),
                          ),
                          Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white

                                    ),
                                  ),
                                  Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  )


                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white

                            ),
                          ),
                          Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                        ],
                      ),
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white

                                    ),
                                  ),
                                  Text("SUBSCRIBE",style: TextStyle(fontSize: 20),)
                                ],
                              )
                            ],
                          )
                        ],
                      ),

                    ],
                  )


                ],
              ),




            ],
          ),



      ),
    ),
    );
  }
}
