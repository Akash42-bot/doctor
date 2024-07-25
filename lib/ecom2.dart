import 'package:flutter/material.dart';

class ecommerceo extends StatelessWidget {
  const ecommerceo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          actions: [Icon(Icons.delete_forever), Icon(Icons.manage_accounts)],
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Discover products',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Icon(
                    Icons.swap_horiz,
                    size: 40,
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        child: Center(
                            child: Text(
                              'Sofas',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey)),
                    Container(
                        child: Center(
                            child: Text(
                              'Chairs',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            )),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.black)),
                    Container(
                        child: Center(
                            child: Text(
                              'Tables',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey)),
                    Container(
                        child: Center(
                            child: Text(
                              'Kitchen',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )),
                        height: 40,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.grey)),
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/first.jpg'),
                              fit: BoxFit.fill)
                      )
                  ),


                  Row(children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image/second.jpg'),
                                fit: BoxFit.fill)))
                  ])
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Wood Element jack',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Text(
                    'Leser Galant',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text('Nu.12,000'), Text('Nu.20,000')],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blueGrey,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Colors.brown,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 70),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blueGrey,
                  ),
                ),
                Icon(
                  Icons.circle,
                  color: Colors.black,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.brown,
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blueGrey,
                  ),
                )
              ]),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/image/third.jpg'),
                              fit: BoxFit.fill))),
                  Row(children: [
                    Container(
                        margin: EdgeInsets.only(top: 20),
                        height: 200,
                        width: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/image/fourth.jpg'),
                                fit: BoxFit.fill)))
                  ])
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Wood Element jack',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  Text(
                    'Leser Galant',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text('Nu.12,000'), Text('Nu.20,000')],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blueGrey,
                  ),
                ),
                Container(
                  child: Icon(
                    Icons.circle,
                    color: Colors.brown,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 70),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blueGrey,
                  ),
                ),
                Icon(
                  Icons.circle,
                  color: Colors.black,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.brown,
                ),
                Container(
                  margin: EdgeInsets.only(right: 50),
                  child: Icon(
                    Icons.circle,
                    color: Colors.blueGrey,
                  ),
                )
              ]),

                  ]
              )
            )




    );
  }
}
