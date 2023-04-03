import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class helpline extends StatelessWidget {
  const helpline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HELPLINE NUMBERS",
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
      body: Padding(
          padding: EdgeInsets.all(28.0),
          child: Center(
            child: Container(
              height: 600,
              width: 300,
              child: Card(
                color: Colors.purple,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
            ),
          )),
    );
  }
}
