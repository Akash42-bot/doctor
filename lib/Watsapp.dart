// import 'package:flutter/material.dart';
// class akashi extends StatelessWidget {
//   const akashi({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WhatsApp',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
//     backgroundColor: Colors.white,
//     actions: [
//     Icon(Icons.camera_alt),
//     SizedBox(width: 16),
//     Icon(Icons.search),
//     SizedBox(width: 16),
//     Icon(Icons.more_vert),
//     SizedBox(width: 8),
//       Divider(color: Colors.black,thickness: 70,)
//     ],
//     ),
//     body: ListView(
//     children: [
//     ChatItem(
//     title: 'Dokan FC',
//     subtitle: 'Bishnu: 📹 Video',
//     time: '2:23 pm',
//     ),
//     ChatItem(
//     title: 'DSP ICT Alumni',
//     subtitle: '~ Tshering Nidup: Good afternoon la D...',
//     time: '11:48 am',
//     ),
//     ],
//     ),
//     );
//     }
// }
//
// class ChatItem extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String time;
//
//   ChatItem({
//     required this.title,
//     required this.subtitle,
//     required this.time,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(
//         backgroundColor: Colors.black,
//       ),
//       title: Text(title),
//       subtitle: Text(subtitle),
//       trailing: Text(
//         time,
//         style: TextStyle(color: Colors.grey),
//       ),
//     );
//   }
// }
