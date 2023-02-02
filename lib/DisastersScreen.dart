import "package:flutter/material.dart";

class DisastersScreen extends StatelessWidget {
  const DisastersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Disasters'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("EarthQuake"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("FLOODS"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("LANDSLIDES"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("CYCLONE"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("TSUNAMI"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
            Container(
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("DROUGHT"),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.purple),
                      foregroundColor: MaterialStateProperty.all(Colors.black)),
                )),
          ],
        ),
      ),
    );
  }
}
