import 'package:app2/HomeScreen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  TextEditingController userctrl = TextEditingController();
  TextEditingController passctrl = TextEditingController();
  String Username = "1234";
  String Password = "pass";
  bool _isObscure = true;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: formkey,
      child: ListView(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          //CircleAvatar(
          // child: Container(
          // height: 60,
          // width: 20,
          //  alignment: Alignment.center,
          //  padding: const EdgeInsets.all(10),

          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 50,
            backgroundImage: AssetImage("assets/12.jpg"),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Number",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              controller: userctrl,
              validator: (String? value) {
                if (value!.trim().isEmpty) {
                  return "this field must be required";
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: IconButton(
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    }),
              ),
              //Use setstate for changign the password visibility (variable)

              controller: passctrl,
              validator: (String? value) {
                if (value!.trim().isEmpty) {
                  return "this field must be required";
                }
              },
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  if (userctrl.text == "1234" && passctrl.text == "pass") {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Screen1(Username: userctrl.text)));

                    print("login successfully");
                  } else if (userctrl.text != "1234" &&
                      passctrl.text != "pass") {
                    print("r");
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content:
                              Text("Login fail please login correct username")),
                    );
                    print("login fail");
                  }
                }
              },
              child: Text("Login")),
        ],
      ),
    ));
  }
}
