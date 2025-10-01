import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ====== Method _buildInfoColumn ======
  Column _buildInfoColumn(IconData icon, String label, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: Colors.green[500]),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center, // rata tengah label
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center, // rata tengah value
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ===== titleSection =====
    Widget titleSection = Column(
      crossAxisAlignment: CrossAxisAlignment.center, // isi Column rata tengah
      children: [
        const Text(
          'Strawberry Pavlova',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          textAlign: TextAlign.center, // judul rata tengah
        ),
        const SizedBox(height: 8),
        const Text(
          'Pavlova is a meringue-based dessert named after the Russian '
          'ballerina Anna Pavlova. Pavlova features a crisp crust and soft, '
          'light inside, topped with fruit and whipped cream.',
          softWrap: true,
          textAlign: TextAlign.center, // deskripsi rata tengah
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // bintang+review di tengah
          children: [
            Row(
              children: List.generate(
                5,
                (index) => const Icon(Icons.star, color: Colors.black),
              ),
            ),
            const SizedBox(width: 8),
            const Text('170 Reviews'),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInfoColumn(Icons.kitchen, 'PREP:', '25 min'),
            _buildInfoColumn(Icons.timer, 'COOK:', '1 hr'),
            _buildInfoColumn(Icons.restaurant, 'FEEDS:', '4–6'),
          ],
        ),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout: Salsabila Mahda - 2341720257',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: titleSection, // tetap di kiri, tapi kontennya rata tengah
                ),
                Expanded(
                  flex: 3,
                  child: Image.asset(
                    'images/pavlova.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
