import 'package:flutter/material.dart';
import 'package:tuesday/Home.dart';
import 'package:tuesday/screens/ResetPass.dart';
import 'package:tuesday/screens/signup.dart';

class Log_in extends StatefulWidget {
  const Log_in({super.key});

  @override
  State<Log_in> createState() => _Log_inState();
}

class _Log_inState extends State<Log_in> {
  final myEmail = TextEditingController();
  final myPassword = TextEditingController();

  String Email = "ss@gmail.com";
  String Password = "123456";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CircleAvatar(
                child: Image(
                  image: AssetImage("images/1.jpg"),
                ),
                radius: 60,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  controller: myEmail,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.green, width: 4)),
                      hintText: "Enter Your Email .",
                      label: Text("Email"),
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  maxLines: 1,
                  maxLength: 40,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  enabled: true,
                  controller: myPassword,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 4)),
                    hintText: "Enter Your Password .",
                    label: Text("Password"),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  maxLines: 1,
                  maxLength: 40,
                  textAlign: TextAlign.center,
                  obscureText: true,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (Email == myEmail.text && Password == myPassword.text) {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: ((context) {
                      return Home();
                    })));
                  } else {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            insetPadding: EdgeInsets.symmetric(
                                horizontal: 70, vertical: 160),
                            alignment: Alignment.topCenter,
                            title: Center(child: Text("Error")),
                            content: Center(
                                child: Container(
                              child: Column(
                                children: [
                                  Text(
                                      "You have entered a wrong email and/or password. Please enter a valid email and/or password or change the password"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return Reset_password();
                                      })));
                                    },
                                    child: Text(
                                      "Forgot your password",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 2, 38, 242),
                                          decoration: TextDecoration.underline),
                                    ),
                                  ),
                                  Divider(
                                    thickness: 1,
                                    height: 1,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      Navigator.pop(context, MaterialPageRoute(
                                          builder: ((context) {
                                        return Log_in();
                                      })));
                                    },
                                    child: Text("Cancel"),
                                  ),
                                ],
                              ),
                            )),
                          );
                        }));
                  }
                },
                child: Text("Log in"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Reset_password();
                  })));
                },
                child: Text(
                  "Forgot your password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
