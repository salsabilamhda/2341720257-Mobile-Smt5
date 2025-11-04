import 'package:flutter/material.dart';

class NavigationSecond extends StatelessWidget {
  const NavigationSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second - by Salsabila'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // jarak antar tombol merata
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, Colors.purple);
              },
              child: const Text('Ungu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, Colors.pinkAccent);
              },
              child: const Text('Pink'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, Colors.indigo);
              },
              child: const Text('Biru Tua'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, Colors.teal);
              },
              child: const Text('Hijau Tosca'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, Colors.orangeAccent);
              },
              child: const Text('Oranye'),
            ),
          ],
        ),
      ),
    );
  }
}
