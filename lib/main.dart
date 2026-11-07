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
        fontFamily: 'Tinos',
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
  static const String fakultas = 'Fakultas Matematika dan Ilmu Pengetahuan Alam';
  static const String universitas = 'Universitas Negeri Medan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Latar
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('PEMROGRAMAN MOBILE'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/digilib.jpg'),
            fit: BoxFit.cover,
            // Lapisan gelap agar teks tetap terbaca.
            colorFilter: ColorFilter.mode(
              Colors.black.withValues(alpha: 0.55),
              BlendMode.darken,
            ),
          ),
        ),
        child: SafeArea(
          child: Center(
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
                    'Halo Semuanya',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Saya $nama',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Card(
                    // Putih agak transparan agar latar tetap samar terlihat.
                    color: Colors.white.withValues(alpha: 0.88),
                    child: const Column(
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
                        ListTile(
                          leading: Icon(Icons.account_balance),
                          title: Text('Fakultas'),
                          subtitle: Text(fakultas),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_city),
                          title: Text('Universitas'),
                          subtitle: Text(universitas),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
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
        ),
      ),
    );
  }
}