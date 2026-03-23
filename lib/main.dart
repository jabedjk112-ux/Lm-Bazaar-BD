import 'package:flutter/material.dart';

void main() {
  runApp(const LmBazaarApp());
}

class LmBazaarApp extends StatelessWidget {
  const LmBazaarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lm Bazaar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LmBazaarHomeScreen(),
    );
  }
}

class LmBazaarHomeScreen extends StatelessWidget {
  const LmBazaarHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Lm Bazaar'),
        actions: const [
          Icon(Icons.notifications_none),
          SizedBox(width: 12),
          Icon(Icons.shopping_cart_outlined),
          SizedBox(width: 12),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.all(12),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'প্রোডাক্ট সার্চ করুন...',
                prefixIcon: const Icon(Icons.search),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),
          const Expanded(
            child: Center(
              child: Text('Lm Bazaar-এ আপনাকে স্বাগতম!'),
            ),
          ),
        ],
      ),
    );
  }
}
