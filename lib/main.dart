import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            centerTitle: true,
          ),
          body: Askme(),
        )),
  );
}

class Askme extends StatefulWidget {
  const Askme({Key? key}) : super(key: key);

  @override
  _AskmeState createState() => _AskmeState();
}

class _AskmeState extends State<Askme> {
  int BA = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  BA = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                "images/ball$BA.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
