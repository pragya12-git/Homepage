import 'package:app2/HomeScreen1.dart';
import 'package:app2/HomeScreen3.dart';
import 'package:app2/HomeScreen5.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  final String Username;
  const Screen1({super.key, required this.Username});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Screen2"),
          actions: [
            IconButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen5(),
                      ));
                }),
                icon: Icon(Icons.settings)),
            IconButton(
                onPressed: (() {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen(),
                      ));
                }),
                icon: Icon(Icons.person)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage(
                      "assets/12.jpg",
                    ),
                  ),
                ],
              ),
              Icon(Icons.person),
              TextFormField(
                decoration: InputDecoration(hintText: widget.Username),
              ),
              GridView(
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, crossAxisSpacing: 16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/12.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/12.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/12.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/12.jpg"),
                    ),
                  ]),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen3(),
                          ));
                    },
                    child: Text("Next Page")),
              ),
            ],
          ),
        ));
  }
}
