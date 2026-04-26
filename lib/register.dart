import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                labelText: "Nama",
              ),
            ),

            SizedBox(height: 15),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),

            SizedBox(height: 15),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Daftar"),
            )

          ],
        ),
      ),
    );
  }
}