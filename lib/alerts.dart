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
    {'name': 'NATIONAL EMERGENCY NUMBER', 'number': '112'},
    {'name': 'Disaster Management Services', 'number': '108'},
    {'name': 'Air Ambulance', 'number': '9540161344'},
    {'name': 'NDRF HEADQUATERS', 'number': '011-24363260'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Helpline',
          style: TextStyle(fontFamily: 'Raleway'),
        ),
        backgroundColor: Color(0xFFEE4D5F),
        foregroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEE4D5F),
              Color.fromARGB(255, 236, 171, 118),
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: contacts.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Card(
                color: Color(0xFFEE4D5F),
                // elevation: 4,
                margin: EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  title: Text(
                    contacts[index]['name']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    contacts[index]['number']!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.phone,
                      color: Colors.greenAccent[400],
                      size: 28,
                    ),
                    onPressed: () {
                      launch('tel:${contacts[index]['number']}');
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
