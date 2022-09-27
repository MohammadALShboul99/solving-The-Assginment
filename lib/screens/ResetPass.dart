import 'package:flutter/material.dart';

class Reset_password extends StatefulWidget {
  const Reset_password({super.key});

  @override
  State<Reset_password> createState() => _Reset_passwordState();
}

class _Reset_passwordState extends State<Reset_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "to change your password ?",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 4)),
                  hintText: "Enter Email .",
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                maxLines: 1,
                maxLength: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
