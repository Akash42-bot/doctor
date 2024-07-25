import 'dart:ffi';

import 'package:flutter/material.dart';
class proj extends StatefulWidget {
  const proj({super.key});

  @override
  State<proj> createState() => _projState();
}

class _projState extends State<proj> {
  double volume=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body:Center(
        child: Container(
          margin: EdgeInsets.only(top: 10,bottom: 10),
          height: 800,
          width: 390,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [

      Column(children: [
      Container(
      margin:EdgeInsets.only(top: 25,left: 10,right: 10),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.arrow_back_ios_new),
            Text('Playing Now',style: TextStyle(fontWeight: FontWeight.bold),),
            Icon(Icons.queue_music_sharp)
          ],
        ),
      ),
    ),

              Center(
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width*0.85,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.white,image:DecorationImage(image: NetworkImage('https://imgs.search.brave.com/6PNFj13ht6ZHSHBi2saX72NfMRgL70DR1XPN7z4TRBU/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9jZG4t/cC5zbWVob3N0Lm5l/dC9zaXRlcy9iYzhl/ZTEzMDU2N2Y0MjAz/YTE3YzY2ZmVhODlk/YzcyYi93cC1jb250/ZW50L3VwbG9hZHMv/MjAyMi8wNi8xNTA3/MzBfZWx2aXNfdG9k/YXkuanBn'),fit: BoxFit.fill)),
                ),
              ),
              Container(margin: EdgeInsets.only(top:14),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Dance mama',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Icon(Icons.favorite,color: Colors.red,)
                ],),
              ),
              Row(children: [
                Text('Elvis',style: TextStyle(fontSize: 20,color: Colors.grey),)
              ],),
              Slider(value: volume, max: 5,activeColor: Colors.pinkAccent,
                  onChanged:(value) {
                setState(() {
                  volume=value;
                });
                  }
                  ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                Text('$volume'),
                  Text('$volume')
                ],),
              ),
              Row(children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 100,
                  width: 370,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color:Colors.white),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    Icon(Icons.shuffle,color:Color(0xfffb6f92),size: 30,),
                    Icon(Icons.skip_previous,color:Color(0xfffb6f92),size: 50,),
                    Icon(Icons.pause_circle_filled_sharp,size: 70,color:Color(0xfffb6f92),),
                    Icon(Icons.skip_next,color:Color(0xfffb6f92),size: 50,),
                    Icon(Icons.sync,color:Color(0xfffb6f92),size: 30,)

                  ],),

                )
              ],)
            ],),]
          ),
        ),
      )
      )
    );

  }
}
