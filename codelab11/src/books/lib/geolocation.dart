import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  late Future<Position> myPosition;

  @override
  void initState() {
    super.initState();
    myPosition = getPosition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 🩷 Tambahkan nama kamu di sini
        title: const Text('Current Location - by Salsabila'),
      ),
      body: Center(
        child: FutureBuilder<Position>(
          future: myPosition,
          builder: (context, snapshot) {
            // Cek status koneksi
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text('Getting location...');
            } 
            // 🧠 Tambahan untuk handling error
            else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return const Text(
                  'Something terrible happened!',
                  style: TextStyle(color: Colors.red, fontSize: 18),
                  textAlign: TextAlign.center,
                );
              }
              // Jika berhasil dapat lokasi
              return Text(
                'Latitude: ${snapshot.data?.latitude}\nLongitude: ${snapshot.data?.longitude}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              );
            }
            // Default jika tidak ada kondisi lain
            return const Text('Unknown state');
          },
        ),
      ),
    );
  }

  /// Method untuk mendapatkan posisi
  Future<Position> getPosition() async {
    // Cek status permission
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permission denied - by Salsabila');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permissions are permanently denied - by Salsabila');
    }

    // Pastikan service lokasi aktif
    bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!isServiceEnabled) {
      throw Exception('Location services are disabled - by Salsabila');
    }

    // Ambil posisi terkini
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
