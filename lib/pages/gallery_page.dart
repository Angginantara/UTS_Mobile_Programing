import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
      ),
      body: Center(
        child: Image.asset(
          'assets/logo.jpeg',
          width: 200,
        ),
      ),
    );
  }
}