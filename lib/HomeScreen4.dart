import 'package:app2/HomeScreen3.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({
    super.key,
    required this.tag,
    required this.imageAddress,
    required this.name,
    required this.number,
    required this.email,
  });
  final String tag;
  final String imageAddress;
  final String name;
  final String number;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Hero(
                tag: tag,
                child: Image.asset(
                  "assets/$imageAddress",
                  height: 350,
                  width: 350,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon: Icon(Icons.arrow_back_outlined),
              ),
              Positioned(
                  top: 300,
                  left: 50,
                  height: 50,
                  width: 50,
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Text(
                      '$name',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ))
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.email,
            ),
            title: Text("$email"),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text("$number"),
          )
        ],
      ),
    );
  }
}
