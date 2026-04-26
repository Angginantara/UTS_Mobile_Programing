import 'package:flutter/material.dart';
import 'profile.dart';
import 'gallery.dart';
import 'about.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({this.username = "admin"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,

        // Tombol Logout
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
                (route) => false,
              );
            },
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Menu",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfilePage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.photo),
              title: Text("Gallery"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => GalleryPage(),
                  ),
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AboutPage(),
                  ),
                );
              },
            ),

          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [

            SizedBox(height: 10),

            // Welcome User
            Text(
              "Selamat datang, $username 💖",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            // CARD
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.star,
                        color: Colors.orange, size: 35),
                    SizedBox(width: 10),
                    Text(
                      "Promo Hari Ini!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            // LISTVIEW BUILDER
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(
                      vertical: 6,
                    ),
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text(
                        "Produk ${index + 1}",
                      ),
                      subtitle: Text(
                        "Deskripsi produk ${index + 1}",
                      ),
                    ),
                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}