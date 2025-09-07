import 'package:flutter/material.dart';
import 'lake_screen.dart';
import 'mountain_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Tambahkan HomeScreen untuk navigasi ke dua screen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Maps Demo'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.landscape),
            title: const Text('Oeschinen Lake Campground'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LakeScreen()),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.terrain),
            title: const Text('Mountain Lake'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MountainScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
