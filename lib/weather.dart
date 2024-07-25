import 'package:batch_or/Imports.dart';
import 'package:flutter/material.dart';

class weather extends StatefulWidget {
  const weather({super.key});

  @override
  State<weather> createState() => _weatherState();
}

class _weatherState extends State<weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffc8dd),
      body: Container(
        margin: EdgeInsets.all(9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10, top: 10),
                    height: 500,
                    width: MediaQuery.of(context).size.width * 0.9,
                    // width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://imgs.search.brave.com/PpK8DF2LqztVU--TYfLKiO3Yer74a92zDandZMae4y8/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90ZW1w/bGF0ZXMubWVkaWFt/b2RpZmllci5jb20v/NjM1NmIzYzFiZjYx/YmI5YjcwMDVlODQ4/L2lwaG9uZS13ZWF0/aGVyLXVpLW1vY2t1/cC10ZW1wbGF0ZS5q/cGc'),
                          fit: BoxFit.fill),
                    ))
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 20),
                  height: 120,
                  width: 110,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://imgs.search.brave.com/AqN3U-A7AbpGFlu_RZhjaCmR6LBsiIR7tV_MdsoKI20/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvODY1/MDE2NzgwL3Bob3Rv/L2Nsb3VkLXBpbmsu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PWp4TmRzNEUtTkRZ/TDZrLWRHYTVTWllv/SEluQV9vU2hUUlYt/RkxYWGRGMDQ9'),
                          fit: BoxFit.fill)),
                  child: Container(
                    margin: EdgeInsets.only(top: 20, right: 50),
                    child: Column(
                      children: [
                        Icon(
                          Icons.cloud_download_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          'Rainy',
                          style: mystyle(18),
                        ),
                        Text(
                          "5-8km/h",
                          style: mystyle(14),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      height: 120,
                      width: 110,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://imgs.search.brave.com/yPio73sIC3p2TPECdTE2ayYpw7sUCN2F7s78YyHTcyI/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzA3LzgwLzAzLzk4/LzM2MF9GXzc4MDAz/OTg1NV9vU1Z3WmJk/aWNxeWMwN1luV3pw/Wnl5aFNkWnRtRms4/RS5qcGc'),
                              fit: BoxFit.fill)),
                      child: Container(
                        margin: EdgeInsets.only(top: 20, right: 50),
                        child: Column(
                          children: [
                            Icon(
                              Icons.scale,
                              color: Colors.white,
                            ),
                            Text(
                              'Temp',
                              style: mystyle(18),
                            ),
                            Text(
                              "1000MB",
                              style: mystyle(14),
                            )
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 10),
                          height: 120,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://imgs.search.brave.com/hLk7WTE_l1wpN6Q6HnuESL6Cvs9Jfs4zuFBjTMU3MPM/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA3LzM5LzM2LzIx/LzM2MF9GXzczOTM2/MjE3OF9tTmFZOFJv/dXNRUjM2S3JUaVFC/UTZNM0E2QlZnSXFj/ay5qcGc'),
                                  fit: BoxFit.fill)),
                          child: Container(
                            margin: EdgeInsets.only(top: 20, right: 50),
                            child: Column(
                              children: [
                                Icon(
                                  Icons.water_drop,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Humid',
                                  style: mystyle(18),
                                ),
                                Text(
                                  "51%",
                                  style: mystyle(
                                      14, Colors.black, FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff333533),
                  ),
                  height: 120,
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              '-10°',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              '-10°',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              '-10°',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              '-10°',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Now',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.cloud_download_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              '-10°',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 33, left: 10),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff333533),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.sunny,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.explore,
                        color: Colors.white,
                      ),
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
