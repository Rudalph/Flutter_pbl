import 'package:flutter/material.dart';

class alerts extends StatelessWidget {
  const alerts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        leading: IconButton
        (
          icon: Icon(Icons.arrow_back, color: Colors.black,) ,
          onPressed: () {
            Navigator.pop(context);
          },
        ),

      ),
    );
  }
}
