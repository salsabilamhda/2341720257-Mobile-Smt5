import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // ====== Method _buildButtonColumn ======
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ===== titleSection =====
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Pavlova',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Makanan Khas Rusia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // ===== buttonSection =====
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // ===== Langkah 1: textSection =====
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pavlova adalah dessert khas berbasis meringue yang renyah di luar '
        'namun lembut di dalam, biasanya disajikan dengan whipped cream '
        'dan buah segar seperti strawberry, kiwi, dan blueberry. '
        'Nama Pavlova diambil dari seorang balerina Rusia terkenal, '
        'Anna Pavlova. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Salsabila Mahda - 2341720257',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/pavlova.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,            // ===== Langkah 2: tambahkan textSection =====
          ],
        ),
      ),
    );
  }
}
