import 'package:flutter/material.dart';

class MountainScreen extends StatelessWidget {
  const MountainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mountain Lake'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Image.network(
            'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
            height: 240,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const _MountainTitleSection(),
          const _MountainButtonSection(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Mountain Lake is a beautiful destination for hiking and camping. The clear water and scenic views make it a popular spot for tourists and locals alike.',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 16,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MountainTitleSection extends StatelessWidget {
  const _MountainTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Mountain Lake',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 8),
                Text('Swiss Alps', style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 4),
          const Text('99', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}

class _MountainButtonSection extends StatelessWidget {
  const _MountainButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buildButton(IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: color,
              letterSpacing: 1.2,
            ),
          ),
        ],
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButton(Icons.call, 'CALL'),
          buildButton(Icons.near_me, 'ROUTE'),
          buildButton(Icons.share, 'SHARE'),
        ],
      ),
    );
  }
}
