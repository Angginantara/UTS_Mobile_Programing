import 'package:flutter/material.dart';
import 'home.dart';
import 'register.dart';
import 'forgot_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diva App',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void login(BuildContext context) {
    if (username.text == "admin" && password.text == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Username / Password salah")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Container(
          width: 320,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage('assets/logo.jpeg'),
              ),

              SizedBox(height: 15),

              Text(
                "Diva App",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              TextField(
                controller: username,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 10),

              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: () => login(context),
                child: Text("Login"),
              ),

              SizedBox(height: 10),

              // FORGOT PASSWORD
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordPage(),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              // REGISTER
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Belum punya akun? "),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Daftar",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}