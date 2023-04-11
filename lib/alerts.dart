import 'package:dis_man_sym/DOandDonts/helpline.dart';
import 'package:flutter/material.dart';

class alerts extends StatelessWidget {
  final double temperature;
  const alerts({required this.temperature});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "ALERTS",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.purple,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(28.0),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Card(
                        color: Colors.purple,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        elevation: 100,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            
                            Text("CONTACT NUBERS",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),),
                            
                          ],
                        )
                        ),
                  ),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(28.0),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    child: Card(
                      
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      elevation: 100,
                      
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            
                            Text("WEBSITE",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              
                            ),),
                            
                          ],
                        )
                      
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
