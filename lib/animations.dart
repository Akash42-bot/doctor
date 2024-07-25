
import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class animation extends StatelessWidget {
  const animation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar( title:Text('Enroll',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.brown)),
          centerTitle: true,


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(padding: EdgeInsets.all(20),
              child: Column(

                children: [
                  Center(
                    child: Container (
                      height: 400,
                      width: 400,
                      child: Lottie.asset('assets/animations/completed.json')


                    ),

                  ),
            //       Row(
            //         children: [
            //           Text('Hey Everyone !',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold, ),),
            //
            //         ],
            //       ),
            //       Column(children: [Text('$yoga')],),
            //       Container(margin:EdgeInsets.only(top: 20),
            //         child: Row(
            //           children: [
            //             Text('Package Prices:',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            //           ],
            //         ),
            //       ),
            //       Row(
            //         children: [
            //           Text('Single Class: Nu.1500'),
            //
            //         ],
            //       )
            //         ],
            //       )
            //
            // ),
            MaterialButton(onPressed: (){Navigator.pop(context);
            }
            )
          ],
        ),
      )








]
    ))
    );
  }
}
