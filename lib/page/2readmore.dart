import 'package:batch_or/data/2product_list.dart';
import 'package:batch_or/model/2model_class.dart';
import 'package:batch_or/page/2details.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class readmore extends StatelessWidget {
  Novelclass read;
   readmore({super.key,required this.read});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          child: Lottie.asset('assets/animations/gpay.json'),
          height: 400,
          width: MediaQuery.of(context).size.width*0.8,
          decoration: BoxDecoration(color: Colors.white),
        ),
      )
    );
  }
}
