import 'package:batch_or/Imports.dart';
import 'package:batch_or/data/1product_list.dart';
import 'package:batch_or/model/1model_class.dart';
import 'package:batch_or/page/1buy.dart';
import 'package:flutter/material.dart';
class productdetail extends StatefulWidget {
  Modelclass modelclass;
  productdetail({super.key,required this.modelclass});

  @override
  State<productdetail> createState() => _product_detailState();
}

class _product_detailState extends State<productdetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('${widget.modelclass.productName}',style: mystyle(30,Colors.black,FontWeight.bold),),
        actions: [
          Icon(Icons.shopping_cart)
        ],

      ),
        body:Column(children: [
          Row(children: [
            Container(
              height: 550,
                width: 410,
                child: Image.asset('${widget.modelclass.imgUrl}',fit: BoxFit.fill,))

          ],),
          Align(alignment: Alignment.topLeft,
            child: Column(
              children: [
            ],),
          ),
          Align(alignment: Alignment.topLeft,
            child: Row(children: [
              Text('${widget.modelclass.price}',style: mystyle(20,Colors.black,FontWeight.bold),),

              ],
              )
          ),
          Column(children: [
            Text('${widget.modelclass.review}',style: mystyle(20,Colors.black),),
          ],),
          Row(children: [
            Text('${widget.modelclass.Size}',style: mystyle(20),),
            Spacer(),
            InkWell(onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>add())
              );

            },
              child: Container(
                child: Center(child: Text('BUY NOW',style: mystyle(15,Colors.white),)),
                height: 40,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.black),),
            )
          ],),
        



        ]
                )
    );
  }
}
