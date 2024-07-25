import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class album extends StatefulWidget {
  const album({super.key});

  @override
  State<album> createState() => _albumState();
}

class _albumState extends State<album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffffe5ec),
      body: SingleChildScrollView(
        child: Container(
          margin:EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10),
          padding: EdgeInsets.all(20),
        
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white),
          child: Column(children: [
            Row(
              children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),color: Colors.white60,
                    image: DecorationImage(image:
                    NetworkImage('https://imgs.search.brave.com/u-15_d6QuQHJ3LHv3Dz5x97ui9hDNHXaJdqfEoMlBAI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9wcmV2/aWV3LnJlZGQuaXQv/Y3JlYXRlZC10aGlz/LXVzaW5nLXRoZS1u/ZXctcHJvZmlsZS1w/aWMtYXBwLXYwLWlm/dzZtOGVrazR6ODEu/anBnP3dpZHRoPTY0/MCZjcm9wPXNtYXJ0/JmF1dG89d2VicCZz/PTI2ZDVmNzNmOTNh/ZmU3NjQzODU0ZjIw/Y2Q5M2YwNDQxOWIz/ZmU4ZmM'),
                    )
                ),
                child: Container(
                  margin: EdgeInsets.only(left:310),
                  child: Icon(Icons.menu),
                ),
        
        
              )
            ],),
            Container( margin: EdgeInsets.only(top: 20),
              child: Row(children: [
                Text('Hello, Samuel',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                Container(margin: EdgeInsets.only(left: 20),
                    child: Icon(Icons.waving_hand,color: Colors.yellow,)),
                Spacer(),
                Container(height: 50,width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Color(0xfffb6f92,)
                            ),
                    child: Icon(Icons.search,size: 30,color: Colors.white,))
              ],),
            ),
        
           Row(children: [Text('What you want to hear today?',style: TextStyle(color: Colors.grey),
           )
           ],),
          Container(margin:EdgeInsets.only(top: 30),
            child: Row(children: [Text('ALBUMS',style: TextStyle(fontWeight: FontWeight.bold,color:Colors.grey,fontSize: 15),)
            ],),
          ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),color: Colors.black,image: DecorationImage(image: NetworkImage('https://imgs.search.brave.com/nCpABqXZxzumEmKv2muCsvzRnwPWl1w836vvARpzEGY/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pMC53/cC5jb20vcGljanVt/Ym8uY29tL3dwLWNv/bnRlbnQvdXBsb2Fk/cy9waW5rLWNsb3Vk/cy13YWxscGFwZXIt/ZnJlZS1waG90by5q/cGc_dz0yMjEwJnF1/YWxpdHk9NzA'),fit: BoxFit.fill)),
                child: Container(
                  margin: EdgeInsets.only(top: 70,bottom: 10,left: 10,right: 10),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.white60,),
                  child: 
                      Container(margin: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Row(children: [
                              Text('Clouds'),
                              Spacer(),
                              Icon(Icons.play_circle,color: Color(0xfffb6f92),),
                              
                            ],),
                            Row(children: [
                              Text('Brain Sarubi')
                            ],)
                          ],
                        ),
                      ),
                      
                    
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.black,image: DecorationImage(image: NetworkImage('https://imgs.search.brave.com/Zc3xqNtgpGap42gkv4KVXX3e5rPrJekWq4o_f5Qp36I/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXIuZG9nL2xh/cmdlLzEwOTcyMTQ2/LmpwZw'),fit: BoxFit.fill)),
                  child: Container(
                    margin: EdgeInsets.only(top: 70,bottom: 10,left: 10,right: 10),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),color: Colors.white60,),
                    child:
                    Container(margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Row(children: [
                            Text('We Meet'),
                            Spacer(),
                            Icon(Icons.play_circle,color: Color(0xfffb6f92),),
        
                          ],),
                          Row(children: [
                            Text('Brain Sarubi')
                          ],)
        
                        ],
                      ),
                    ),
        
        
        
                  ),
                ),
        
        
        
            ],),
            Container(margin: EdgeInsets.only(top: 20),
              child: Row(children: [
                Text('RECENTLY PLAYED ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey),
                )
        
              ],),
        
        
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
              height: 80,
              width: 330,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffe9ecef),),
                child: Column(children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,width: 60,
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,image:
                      DecorationImage(image: NetworkImage('https://imgs.search.brave.com/tgcLmQagOG2oxz1l2c3_unWV3y24VNqwKhPI35qCdng/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvcmFuZG9tLXJh/enl3amdoenQ3MmJ6/OGkuanBn'),
                          fit: BoxFit.fill)
                      ) ,
        
                    ),
                    Column(
                      children: [
                      Text('Chained down'),
                      Container(margin: EdgeInsets.only(right: 20),
                          child: Text('Teddy Mill',style: TextStyle(color: Colors.grey),))
                    ],),
                    Container(margin: EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                        Text('4:53'),
        
                      ],),
                    ),
                    Container(margin: EdgeInsets.only(left: 20),
                        child: Row(children: [Icon(Icons.favorite,color: Colors.red,size: 25,)],))
        
                  ],),
        
                ],),
            )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                height: 80,
                width: 330,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffe9ecef),),
                child: Column(children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,width: 60,
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,image:
                      DecorationImage(image: NetworkImage('https://imgs.search.brave.com/qypOZxbr_hsMLnsL745FalIzx9vKZwbBYXxk1ZSsVro/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS8xMS84/Mi9tTzZic1EuanBn'),
                          fit: BoxFit.fill)
                      ) ,
        
                    ),
                    Column(
                      children: [
                        Text('Chained down'),
                        Container(margin: EdgeInsets.only(right: 20),
                            child: Text('Teddy Mill',style: TextStyle(color: Colors.grey),))
                      ],),
                    Container(margin: EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          Text('4:53'),
        
                        ],),
                    ),
                    Container(margin: EdgeInsets.only(left: 20),
                        child: Row(children: [Icon(Icons.favorite,color: Colors.red,size: 25,)],))
        
                  ],),
        
                ],),
              )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                height: 80,
                width: 330,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffe9ecef),),
                child: Column(children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,width: 60,
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,image:
                      DecorationImage(image: NetworkImage('https://imgs.search.brave.com/s5vO5snwNGwsoMze1iuE5zsxgJb7giZynoLwmDb1JOI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDc0NTUw/NDMuanBn'),
                          fit: BoxFit.fill)
                      ) ,
        
                    ),
                    Column(
                      children: [
                        Text('Chained down'),
                        Container(margin: EdgeInsets.only(right: 20),
                            child: Text('Teddy Mill',style: TextStyle(color: Colors.grey),))
                      ],),
                    Container(margin: EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          Text('4:53'),
        
                        ],),
                    ),
                    Container(margin: EdgeInsets.only(left: 20),
                        child: Row(children: [Icon(Icons.favorite,color: Colors.red,size: 25,)],))
        
                  ],),
        
                ],),
              )
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                height: 80,
                width: 330,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:Color(0xffe9ecef),),
                child: Column(children: [
                  Row(children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 60,width: 60,
                      decoration:BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.white,image:
                      DecorationImage(image: NetworkImage('https://imgs.search.brave.com/WQceTHOV1DdFv_9A4zUnjtFC-TUQr8AnstAyYX-KjyE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDc0NTUw/NDAuanBn'),
                          fit: BoxFit.fill)
                      ) ,
        
                    ),
                    Column(
                      children: [
                        Text('Chained down'),
                        Container(margin: EdgeInsets.only(right: 20),
                            child: Text('Teddy Mill',style: TextStyle(color: Colors.grey),))
                      ],),
                    Container(margin: EdgeInsets.only(left: 80),
                      child: Row(
                        children: [
                          Text('4:53'),
        
                        ],),
                    ),
                    Container(margin: EdgeInsets.only(left: 20),
                        child: Row(children: [Icon(Icons.favorite,color: Colors.red,size: 25,)],))

                  ],),
        
                ],),
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
