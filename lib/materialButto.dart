import 'package:flutter/material.dart';

class ecommercei extends StatefulWidget {
  const ecommercei({super.key});

  @override
  State<ecommercei> createState() => _ecommerceiState();
}

class _ecommerceiState extends State<ecommercei> {

  Color color1 = Colors.yellow;
  Color color2 = Colors.black12;
  bool pressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pressed? color1: color2,
        drawer: Drawer(),
        appBar: AppBar(title: Text('Buttoms',style: TextStyle(fontSize: 30),),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: [Icon(Icons.delete_forever), Icon(Icons.manage_accounts),],
        ),
        body: Center(
          child: MaterialButton(onPressed: () {print('Hello');
            if(pressed==false){
              pressed=true;
              setState(() {

              });
            }else{
              pressed=false;
              setState(() {

              });
            }


            },color: Colors.blue,
          height: 100,
            minWidth: 100,
            child: Text('material Buttons'),
          ),
        )

    );
  }
}