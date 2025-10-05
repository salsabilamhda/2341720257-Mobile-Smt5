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
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ===== Stars Row =====
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    // ===== titleSection (LEFT COLUMN) =====
    Widget titleSection = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Strawberry Pavlova',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        const Text(
          'Pavlova is a meringue-based dessert named after the Russian '
          'ballerina Anna Pavlova. Pavlova features a crisp crust and soft, '
          'light inside, topped with fruit and whipped cream.'
          ' Salsabila Mahda Runisha - 2341720257',
          softWrap: true,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),

        ratings,

        const SizedBox(height: 16),

        // ===== Row: PREP, COOK, FEEDS =====
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
                // LEFT COLUMN
                Expanded(
                  flex: 2,
                  child: titleSection,
                ),

                // IMAGE
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
