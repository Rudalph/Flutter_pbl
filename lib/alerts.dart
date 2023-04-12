import 'package:dis_man_sym/DOandDonts/helpline.dart';
 import 'package:flutter/material.dart';
 import 'package:url_launcher/url_launcher.dart';


// class alerts extends StatelessWidget {
//   // final double temperature;
//   // final String city_value;
//   // const alerts( this.temperature, this.city_value);
//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//         appBar: AppBar(
//           title: Text(
//             "ALERTS",
//             style: TextStyle(color: Colors.black),
//           ),
//           backgroundColor: Colors.purple,
//           leading: IconButton(
//             icon: Icon(
//               Icons.arrow_back,
//               color: Colors.black,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: Column(
//           children: [
//             Container(
//               child: Padding(
//                 padding: EdgeInsets.all(28.0),
//                 child: Center(
//                   child: Container(
//                     height: 200,
//                     width: 300,
//                     child: Card(
//                         color: Colors.purple,
//                         shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(30)),
//                         elevation: 100,
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
                            
//                             Text(".............................")
//                             // Text("CONTACT NUBERS",style: TextStyle(
//                             //   fontSize: 20,
//                             //   fontWeight: FontWeight.w300,
//                             // ),),
                            
//                           ],
//                         )
//                         ),
//                   ),
//                 ),
//               ),
//             ),
//             Container(
//               child: Padding(
//                 padding: EdgeInsets.all(28.0),
//                 child: Center(
//                   child: Container(
//                     height: 200,
//                     width: 300,
//                     child: Card(
                      
//                       color: Colors.blue,
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30)),
//                       elevation: 100,
                      
//                       child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
                            
//                             Text("WEBSITE",style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w300,
                              
//                             ),),
                            
//                           ],
//                         )
                      
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }


class alerts extends StatelessWidget {
  final List<Map<String, String>> contacts = [
    {'name': 'National Disaster Response Force', 'number': '1070'},
    {'name': 'National Emergency Response Center', 'number': '112'},
    {'name': 'State Disaster Management Authority', 'number': '108'},
    // Add more contacts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergency Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(contacts[index]['name']!),
            subtitle: Text(contacts[index]['number']!),
            onTap: () {
              launch('tel:${contacts[index]['number']}');
            },
          );
        },
      ),
    );
  }
}

