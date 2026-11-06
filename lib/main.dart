import 'package:flutter/material.dart';

void main() {
  runApp(const HelloApp());
}

/// Widget
class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: const HelloPage(),
    );
  }
}

/// Halaman pembuka
class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  // Data diri
  static const String nama = 'Sebastian Saut Marulitua Sinaga';
  static const String nim = '4242550005';
  static const String kelas = 'Ilmu Komputer D 2024';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PEMROGRAMAN MOBILE'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.black)
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/myfoto.jpg'),
              ),
              const SizedBox(height: 24),
              const Text(
                'Halo, Semuanya!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text('Saya $nama', textAlign: TextAlign.center),
              const SizedBox(height: 16),
              const Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.badge),
                      title: Text('NIM'),
                      subtitle: Text(nim),
                    ),
                    ListTile(
                      leading: Icon(Icons.school),
                      title: Text('Kelas'),
                      subtitle: Text(kelas),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Widget Unik
              ElevatedButton.icon(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Selamat datang!')),
                  );
                },
                icon: const Icon(Icons.waving_hand),
                label: const Text('Sapa'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}