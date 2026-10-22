import 'package:flutter/material.dart';

void main() => runApp(const BiodataApp());

class BiodataApp extends StatelessWidget {
  const BiodataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biodata Diri',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen, // Menggunakan tema warna hijau
        ),
        useMaterial3: true,
      ),
      home: const BiodataPage(),
    );
  }
}

class BiodataPage extends StatelessWidget {
  const BiodataPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Variabel Data
    const nama = 'ilham';
    const nim = '241080200014';
    const prodi = 'Informatika';
    const semester = 5;
    const kota = 'beji , pasuruan';
    const email = 'ilham@email.com';
    const keahlian = 'Membuat Kepokanan nangis';
    const hobi = ['Badminton', 'Game', 'Tidur'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata Diri Ilham'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Avatar Foto Profil dari Folder Asset (Sudah Diperbaiki)
                    const Center(
                      child: CircleAvatar(
                        radius: 42,
                        backgroundImage: AssetImage('assets/image/mobil.png'),
                        backgroundColor: Colors.lightGreen,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Text(
                        nama,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Detail Informasi Akademik & Kontak
                    const Text('NIM: $nim'),
                    const SizedBox(height: 8),
                    const Text('Program Studi: $prodi'),
                    const SizedBox(height: 8),
                    const Text('Semester: $semester'),
                    const SizedBox(height: 8),
                    const Text('Kota: $kota'),
                    const SizedBox(height: 8),
                    const Text('Email: $email'),
                    const SizedBox(height: 8),
                    const Text('Keahlian: $keahlian'), // Poin Informasi Baru

                    const Divider(height: 32),

                    // Fitur Baru: Daftar Hobi dengan Wrap & Chip
                    const Text(
                      'Hobi',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: hobi
                          .map((item) => Chip(
                        label: Text(item),
                        backgroundColor:
                        Theme.of(context).colorScheme.surfaceContainerHighest,
                      ))
                          .toList(),
                    ),

                    const SizedBox(height: 20),

                    // Deskripsi Diri
                    const Text(
                      'Tentang Saya',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Saya adalah mahasiswi Teknik Informatika yang berfokus pada pengembangan aplikasi mobile dan desain antarmuka pengguna.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}