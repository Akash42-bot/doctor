import 'package:batch_or/Imports.dart';
import 'package:batch_or/doctor%20data/medicine_list.dart';
import 'package:batch_or/doctor%20model/medicine_class.dart';
import 'package:batch_or/page/Payment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:gap/gap.dart';
class buynow extends StatelessWidget {
  MedicineClass medicineClass;
   buynow({super.key,required this.medicineClass});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 70,width: 390,color: Color(0xff023e8a),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    InkWell(onTap:
                    (){
                      Navigator.pop(context);
                    },
                      child: Container(
                        padding: EdgeInsets.all(10),
                          child: Icon(Icons.arrow_back,color: Colors.white,)),
                    ),
                    Container(height: 30,width: 250,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border:
                    Border.all(color: Colors.white)
                    ),
                      child: Row(
                        children: [Icon(Icons.search,color: Colors.white,),
                          Text('search',style: TextStyle(color: Colors.white),)
            
                      ],),
                    ),
                    Icon(Icons.shopping_cart_outlined,color: Colors.white,)
            
            
                  ],),
            
                ),
                Container(
                  height: 300,width: 400,color: Colors.white,
                  child: Image.asset('${medicineClass.imgurl}'),
                ),
                Gap(5),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(7),
                  child: Row(
                    children: [
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${medicineClass.name}',style: mystyle(25,Colors.black,FontWeight.bold),),
                          Text('${medicineClass.weight}',style: mystyle(16,Colors.black)),
                          Text('${medicineClass.no}',style: mystyle(16,Colors.black)),
                          Gap(7),
                          Text('${medicineClass.price}',style: mystyle(20,Colors.black))
                      ],),
                    ],
                  ),
                ),
                Gap(5),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(7),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text('About',style: mystyle(20,Colors.black,FontWeight.bold),),
                    Gap(5),
                    Text('$abt',style: mystyle(17),)
                  ],),
                ),
                InkWell(onTap: (){
                  showDialog(context: context, builder: (context){
                    return AlertDialog(
                      title: Text('Proceed with payment'),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>
                          payment()));
                        }, child: Text('Yes')),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: Text('No')),
                      ],
                    );
                  });
                },
                  child: Container(
                    height: 40,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text('BUY NOW',style: mystyle(20,Colors.black,FontWeight.bold),)),
                  ),
                )
            
              ],
            ),
          )

      ),
    );
  }
}


