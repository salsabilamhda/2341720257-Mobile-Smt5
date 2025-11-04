import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.grey.shade700; 
  _showColorDialog(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Pilih Warna Favorit Anda'),
          content: const Text('Silakan pilih salah satu warna di bawah:'),
          actions: <Widget>[
            TextButton(
              child: const Text('Pink', style: TextStyle(color: Colors.pink)),
              onPressed: () {
                color = Colors.pink.shade300; 
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Kuning', style: TextStyle(color: Colors.amber)),
              onPressed: () {
                color = Colors.amber.shade300; 
                Navigator.pop(context, color);
              },
            ),
            TextButton(
              child: const Text('Tosca', style: TextStyle(color: Colors.teal)),
              onPressed: () {
                color = Colors.teal.shade300; 
                Navigator.pop(context, color);
              },
            ),
          ],
        );
      },
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Navigation Dialog Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () {
            _showColorDialog(context);
          },
        ),
      ),
    );
  }
}