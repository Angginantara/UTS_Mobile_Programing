import 'package:flutter/material.dart';
import 'profile.dart';
import 'gallery.dart';
import 'about.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text("Menu",
                  style: TextStyle(color: Colors.white,fontSize: 24)),
            ),
            ListTile(
              title: Text("Profile"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => ProfilePage()));
              },
            ),
            ListTile(
              title: Text("Gallery"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => GalleryPage()));
              },
            ),
            ListTile(
              title: Text("About"),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (_) => AboutPage()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "Selamat Datang di Diva App 💖",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}