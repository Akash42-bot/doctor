import 'package:flutter/material.dart';
class sos extends StatefulWidget {
  const sos({super.key});

  @override
  State<sos> createState() => _sosState();
}

class _sosState extends State<sos> {
  double _currentValue=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('aka'),
      ),
      body: Column(children: [
        Slider(value:_currentValue,
            max: 100,
            onChanged:(value){
              setState(() {
                _currentValue=value;
              }
              );

            }

        ),
      Text('$_currentValue',style: TextStyle(fontSize: 20,color: Colors.black),)

      ],
      ),
    );
  }
}
