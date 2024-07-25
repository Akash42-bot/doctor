import 'package:flutter/material.dart';
class hotel_registration extends StatefulWidget {
  const hotel_registration({super.key});

  @override
  State<hotel_registration> createState() => _hotel_registrationState();
}

class _hotel_registrationState extends State<hotel_registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('Create new'),
        Text('Account')
      ],),
    );
  }
}
