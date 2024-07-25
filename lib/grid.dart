import 'package:flutter/material.dart';
class grid extends StatelessWidget {
  const grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 300,
        child: ListView.builder(
          itemCount: 5,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
          GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              children: [
              Container(
              margin: EdgeInsets.all(10),
          color: Colors.black,),
          Container(
          margin: EdgeInsets.all(10),
          color: Colors.black,),
          Container(
          margin: EdgeInsets.all(10),
          color: Colors.black,),
          Container(
          margin: EdgeInsets.all(10),
          color: Colors.black)
        ]
          );
        }
          ),
      ),

    );
  }
}
