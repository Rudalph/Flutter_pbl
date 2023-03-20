import 'package:dis_man_sym/DOandDonts/helpline.dart';
import 'package:flutter/material.dart';


class alerts extends StatelessWidget {
  
   final double temperature;
   const alerts({required this.temperature});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ALERTS",style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.purple,
        leading: IconButton
        (
          icon: Icon(Icons.arrow_back, color: Colors.black,) ,
          onPressed: () {
            Navigator.pop(context);
          },
        ),

      ),
     body:Column(
       children: [
         Container
         (
             child: Padding
          (
            padding: EdgeInsets.all(28.0),
            child: Center
            (
              child: Container
              (
                height: 200,
                width: 300,
                child: Card
                (
                  color: Colors.black,
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 100,

                  child: Column
                    (
                    mainAxisSize: MainAxisSize.min,
                    children:
                    [
                      ListTile
                        (
                        leading: Icon(Icons.web_asset_outlined),
                        title: Text("NOTICE"),
                        subtitle: Text("ALERTS GENERATED HERE ARE BASED ON THE DATA THAT IS DISPLAYED ON WEBSITE....DATA SCRAPING TECHNIQUE AND PREVIOUS YEARS DATA IS USED TO ANALYSE AND GENERATE ALERTS"),
                      ),

                      ButtonBar
                        (
                        children:
                        [

                          ElevatedButton
                            (
                              onPressed: () 
                              {
                                  Navigator.of(context).push(
                                 MaterialPageRoute(builder: (context) => helpline()),
                                 );
                              },
                              child: Text("HELPLINE"),
                              style: ElevatedButton.styleFrom
                              (
                                primary: Color.fromARGB(255, 43, 3, 50)
                              ),
                          )
                        ],
                      )
                    ],
                  )
                ),
              ),
            ),
          ),
         ),
         Container
         (
          child: Padding
          (
              padding: EdgeInsets.all(28.0),
            child: Center
            (
              child: Container
              (
                height: 200,
                width: 300,
                child: Card
                (
                  child: Text(
          'Temperature: ${temperature.round()}°C',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            fontSize: 50,
            color: Colors.black,
          ),
        ),
                  color: Colors.blue,
                  shape: RoundedRectangleBorder
                  (
                    borderRadius: BorderRadius.circular(30)
                  ),
                  elevation: 100,
                ),
              ),
            ),  
          ),
         )
       ],
     ) 
    );
  }
}
