import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchased'),
      ),
      body:
      Column(
        children: [
          Container(
            height: 300,
           width: 300,
           color: Colors.white,
           child: Lottie.asset('assets/animations/purchase.json'),

          ),
          MaterialButton(onPressed: (){Navigator.pop(context);
          }
          )


    ],
      ),


    );
  }
}
