import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Future Demo - by Salsabila',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LocationScreen(),
    );
  }
}

// ===============================================================
// Screen untuk menampilkan lokasi pengguna (by Salsabila)
// ===============================================================
class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String myPosition = '';

  @override
  void initState() {
    super.initState();
    getPosition().then((Position myPos) {
      String positionText =
          'Latitude: ${myPos.latitude.toString()} - Longitude: ${myPos.longitude.toString()}';
      setState(() {
        myPosition = positionText;
      });
    }).catchError((error) {
      setState(() {
        myPosition = 'Error: $error';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // ===== Tambahan widget loading sesuai gambar =====
    final myWidget = myPosition == ''
        ? const CircularProgressIndicator()
        : Text(
            myPosition,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
          );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Current Location - by Salsabila'),
      ),
      body: Center(
        child: myWidget, // tampilkan indikator loading atau lokasi
      ),
    );
  }

  // ====== Ambil posisi GPS ======
  Future<Position> getPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permission denied - by Salsabila');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions permanently denied - by Salsabila');
    }

    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      throw Exception('Location services disabled - by Salsabila');
    }

    // 🔹 Tambahkan delay agar animasi loading terlihat
    await Future.delayed(const Duration(seconds: 3));

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
