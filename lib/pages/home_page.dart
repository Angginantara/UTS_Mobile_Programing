import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (_) => LoginPage(),
                ),
                (route) => false,
              );
            },
          )
        ],
      ),

      drawer: CustomDrawer(),

      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [

            Text(
              "Selamat datang, $username ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(Icons.star, size: 35),
                    SizedBox(width: 10),
                    Text("Promo Hari Ini!")
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (_, index) {
                  return Card(
                    child: ListTile(
                      leading: Icon(Icons.shopping_bag),
                      title: Text("Produk ${index + 1}"),
                      subtitle: Text(
                        "Deskripsi produk ${index + 1}",
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}