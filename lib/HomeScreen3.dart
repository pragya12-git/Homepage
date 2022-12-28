import 'package:app2/HomeScreen4.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      backgroundColor: Colors.red,
      body: ListView(
        children: [
          //USER 1

          ListTile(
            leading: Hero(
              tag: "User1",
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/photo1.jpg")),
            ),
            title: Text("Rita"),
            subtitle: Text("rr@gmail.com"),
            trailing: Text("  9856788"),
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Screen4(
                            tag: "User1",
                            imageAddress: "photo1.jpg",
                            name: "Rita",
                            number: "9856788 ",
                            email: "rr@gmail.com",
                          )));
            }),
          ),

          //   //user 2

          ListTile(
              leading: Hero(
                tag: "User2",
                child:
                    CircleAvatar(backgroundImage: AssetImage("assets/12.jpg")),
              ),
              title: Text("gita"),
              subtitle: Text("gg@gmail.com"),
              trailing: Text("986756"),
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen4(
                        tag: "User2",
                        imageAddress: "12.jpg",
                        name: "gita",
                        number: "986756",
                        email: "gg@gmail.com",
                      ),
                    ));
              })),
          ListTile(
            leading: Hero(
                tag: "User3",
                child: CircleAvatar(
                    backgroundImage: AssetImage(
                  "assets/photo2.jpg",
                ))),
            title: Text("sita"),
            subtitle: Text("ss@gmail.com"),
            trailing: Text("985678"),
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen4(
                      tag: "User3",
                      imageAddress: "photo2.jpg",
                      name: "sita",
                      number: "985678",
                      email: "ss@gmail.com",
                    ),
                  ));
            }),
          ),
          ListTile(
              leading: Hero(
                tag: "User4",
                child: CircleAvatar(
                    backgroundImage: AssetImage(
                  "assets/Photo3.jpg",
                )),
              ),
              title: Text("nita"),
              subtitle: Text("nn@gmail.com"),
              trailing: Text("9845566"),
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen4(
                        tag: "User4",
                        imageAddress: "photo3.jpg",
                        name: "nita",
                        number: "9845566",
                        email: "nn@gmail.com",
                      ),
                    ));
              })),

          ListTile(
            leading: Hero(
              tag: "User5",
              child: CircleAvatar(
                  backgroundImage: AssetImage(
                "assets/photo4.jpg",
              )),
            ),
            title: Text("Hari"),
            subtitle: Text("hh@gmail.com"),
            trailing: Text("986745"),
            onTap: (() {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen4(
                      tag: "User5",
                      imageAddress: "photo4.jpg",
                      name: "Hari",
                      number: "986745",
                      email: "hh@gmail.com",
                    ),
                  ));
            }),
          ),
        ],
      ),

      //  ListView(children: List.generate(5, (index) => Padding(padding: EdgeInsets.all(8.0),
      //   child:InkWell(onTap: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) =>Screen4() ,));
      //   },
      // child: Container(height: 140,decoration: BoxDecoration
      // (borderRadius: BorderRadius.circular(10),color: Colors.white),
      //  child:ListTile(
      //         leading:  Hero(
      //           tag: '12.jpg',
      //           child:Image.asset("assets/photo1.jpg"),

      //       ),

      // ))
      // ),))),
    );
  }
}
