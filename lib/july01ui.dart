import 'package:batch_or/furniture.dart';
import 'package:flutter/material.dart';

class buttons extends StatelessWidget {
  const buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          actions: [
            Icon(
              Icons.favorite_outline_outlined,
              size: 30,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 1),
          child: Column(
            children: [
              Center(
                child: Container(child: Image.asset('assets/image/ndecom.jpg')),
              ),
              Row(
                children: [
                  Container(
                      height: 130,
                      width: 200,
                      margin: EdgeInsets.only(left: 90),
                      // color: Colors.white,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('assets/image/aecom.jpg'),
                              fit: BoxFit.fill))),
                ],
              ),
              Row(children: [
                Container(
                    margin: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.star,
                      color: Colors.orange,
                    )),
                Text(
                  '4.8',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      onPressed: () {
                        print('No review');
                      },
                      child: Text(
                        '145 review',
                        style: TextStyle(color: Colors.black),
                      )),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.grey),
                ),
              ]),
              Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Text(
                        'Leset Galant',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Column(
                children: [
                  Text(
                    '$ecom',
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 30,
                    width: 100,
                  )
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 0.6,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text(
                      '\$64.00',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Row(
                      children: [
                        MaterialButton(
                            onPressed: () {},
                            color: Colors.black,
                            height: 60,
                            minWidth: 230,
                            child: Text(
                              'Add to cart',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
// Center(child: Text('145 review',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
// margin: EdgeInsets.only(left: 20),
