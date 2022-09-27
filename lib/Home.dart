import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tuesday/screens/Login.dart';
import 'package:tuesday/screens/signup.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Log_in();
                    })));
                  },
                  child: Text(
                    "Login Page",
                    style: TextStyle(fontFamily: "Dancing", fontSize: 25),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade700),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Sign_up();
                    })));
                  },
                  child: Text(
                    "Signup ",
                    style: TextStyle(fontFamily: "Dancing", fontSize: 25),
                  ))
            ],
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/2.jpg"), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
