import 'package:flutter/material.dart';
class tution extends StatelessWidget {
  const tution({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(),
     appBar: AppBar(
       title:Text('The Daily Snack',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
       centerTitle: true,
       backgroundColor: Colors.white,
       //  leading:
       // Icon(Icons.menu),
       actions: [
       Icon(Icons.circle,size: 30,),
],
     ),
      body: Center(
        child: Column(
          children: [
            Divider(indent: 20,endIndent: 20,thickness: 2,color: Colors.black,),
            Divider(indent: 20,endIndent: 20,thickness: 15,color: Colors.black,),
            Container(
              height: 250,
              width: 500,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(color:Colors.grey,),

            ),
            
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Center(child: Text('Top 10 Holidays',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),)),
                ],
                  ),
            ),


            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Text('Destination',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10,),
              width: double.infinity,
              child: Row(
                children: [
                  Text('Holiday is near.We already list the best')

                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                children: [
                  Text('destination for you and your love one to...')

                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              width: double.infinity,
              child: Row(
                children:[
                  Text('5 min read',style: TextStyle(color: Colors.grey,fontSize: 15),)
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 20,color: Colors.black,),


            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // Container(
                //   child:ElevatedButton.icon(onPressed: (){},
                //     label: Text("FOR YOU",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                //   ),
                //   height: 30,
                //   width: 150,
                //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,),

                // )
                Container(
                  child: Center(
                    child:
                    Text('FOR YOU',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white70
                    ),),
                  ),
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                ),
                Container(
                  child:ElevatedButton.icon(onPressed: (){},
                      label: Text("TRENDING",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    icon:const Icon(Icons.local_fire_department,color: Colors.orange,size: 20,),
                  ),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black,),

                  ),

                Container(
                  child:ElevatedButton.icon(onPressed: (){},
                      label: Text('TECH',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                    icon: const Icon(Icons.laptop_windows_rounded,color: Colors.black,size: 20,),
                  ),
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                ),
                Container(
                  child: ElevatedButton.icon(onPressed: (){},
                      label: Text('ECONOMY',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                      icon: const Icon(Icons.attach_money)
                  ),
                  height: 30,
                  width: 150,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                )

              ],

            ),
            Row(
              children: [
                Container(
                height: 70,
                width: 90,
                color: Colors.grey,
                  margin: EdgeInsets.all(20),


                ),

Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Do "Less is more " still',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
    SizedBox(height: 8,),
    Text(" relevant ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
    Text("4 min read",style: TextStyle(fontSize: 10,color: Colors.orange),)

  ],

)

),

              ],
                  ),
Divider(thickness: 1,),
        Row(
            children: [
            Container(
            height: 70,
            width: 90,
            color: Colors.grey,
            margin: EdgeInsets.all(20),


            ),
          Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Green cactus and how',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 8,),
            Text("to find them",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
            Text("2 min read",style: TextStyle(fontSize: 10,color: Colors.orange),)

          ]

        ),
          )

]


        )
    ]
      )
      )
    );
  }
}
