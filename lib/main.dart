import 'package:batch_or/Assignment.dart';
import 'package:batch_or/Container.dart';
import 'package:batch_or/album.dart';
import 'package:batch_or/carousel.dart';
import 'package:batch_or/doctor%20page/bottom_bar.dart';
import 'package:batch_or/doctor%20page/corona.dart';
import 'package:batch_or/doctor%20page/homePage.dart';
import 'package:batch_or/doctor%20page/hospitasl_page.dart';
import 'package:batch_or/doctor%20page/medicine_page2.dart';
import 'package:batch_or/doctor%20page/profile_detail.dart';
import 'package:batch_or/fav.dart';
import 'package:batch_or/flowting_action_buttom.dart';
import 'package:batch_or/grid.dart';
import 'package:batch_or/hotel_page/hotel_page.dart';
import 'package:batch_or/hotel_page/registration_page.dart';
import 'package:batch_or/materialButto.dart';
import 'package:batch_or/animations.dart';
import 'package:batch_or/ecom2.dart';
import 'package:batch_or/july01ui.dart';
import 'package:batch_or/Travel.dart';
import 'package:batch_or/myButtom.dart';
import 'package:batch_or/page/1home_page.dart';
import 'package:batch_or/page/1home_page.dart';
import 'package:batch_or/page/2Home_page.dart';
import 'package:batch_or/page/whats.dart';
import 'package:batch_or/registeration%20_page.dart';
import 'package:batch_or/splash_screen/loading.dart';
import 'package:batch_or/stack.dart';
import 'package:batch_or/stack_and_ClipBehavior_positioned.dart';
import 'package:batch_or/weather.dart';
import 'package:batch_or/resume.dart';
import 'package:batch_or/Watsapp.dart';
import 'package:batch_or/praxtice.dart';
import 'package:batch_or/register.dart';
import 'package:batch_or/slide.dart';
import 'package:batch_or/sliderproj.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:hotel_registration()

    );
  }
}

