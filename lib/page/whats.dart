import 'package:batch_or/Imports.dart';
import 'package:batch_or/data/list%20tile.dart';
import 'package:batch_or/page/whats2_page.dart';
import 'package:flutter/material.dart';

class whatTile extends StatelessWidget {
  const whatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff212529)),
              child: Icon(
                Icons.more_horiz,
                color: Colors.white,
              )),
          Spacer(),
          Icon(
            Icons.camera_alt,
            color: Colors.white,
          ),
          Container(
            child: Icon(Icons.add, color: Colors.black),
            margin: EdgeInsets.only(left: 20, right: 10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.green),
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chats',
                    style: mystyle(30, Colors.white, FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color: Color(0xff212529)),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0xff495057),
                        ),
                        Text(
                          'Search',
                          style: mystyle(20, Color(0xff495057)),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 28,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff212529)),
                    child: Center(
                        child: Text(
                      'All',
                      style: mystyle(18, Color(0xff495057)),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 28,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff212529)),
                    child: Center(
                        child: Text(
                      'Unread',
                      style: mystyle(18, Color(0xff495057)),
                    )),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 28,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff212529)),
                    child: Center(
                        child: Text(
                      'Groups',
                      style: mystyle(18, Color(0xff495057)),
                    )),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.archive_outlined,
                        color: Color(0xff212529),
                        size: 30,
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 30),
                      child: Text(
                        'Archived',
                        style: mystyle(25, Colors.white, FontWeight.bold),
                      ))
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: tiles.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => chats(tileclass:
                      tiles[index],),));
                  },
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      child: Column(
                        children: [
                          ListTile(
                            // tileColor: Colors.green,
                            leading: Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                  // borderRadius: BorderRadius.circular(70),
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('${tiles[index].imgurl}'), fit: BoxFit.cover
                                  ),
                              ),
                            ),
                            title: Text('${tiles[index].personName}',style: mystyle(20,Colors.white),),
                            subtitle: Text('${tiles[index].chats}'),
                            trailing: Text("${tiles[index].time}",style: mystyle(15),),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
