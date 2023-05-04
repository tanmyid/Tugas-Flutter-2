import 'package:flutter/material.dart';
import 'package:coba_tanio_202053010/halProfil.dart';
import 'package:coba_tanio_202053010/halWidgetVisible.dart';
import 'package:coba_tanio_202053010/halWidgetInvisible.dart';

void main() {
  runApp(const MaterialApp(
    title: '202053010 - Tanio',
    home: Beranda(),
  ));
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const Icon(Icons.home),
          title: const Text('Aplikasi Pertamaku',
              style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                // logo
                const SizedBox(height: 50),
                const Icon(
                  Icons.flutter_dash,
                  size: 120,
                  color: Colors.blue,
                ),

                // text pembuka
                const SizedBox(height: 10),
                const Text('202053010 - Tanio', style: TextStyle(fontSize: 24)),

                const SizedBox(height: 30),
                const Text('Selamat datang',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),

                const SizedBox(height: 5),
                const Text('Silahkan pilih menu :',
                    style: TextStyle(fontSize: 24)),

                // tombol
                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HalProfil()));
                    },
                    icon: const Icon(Icons.person),
                    label: const Text('Profil Saya'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50)),
                  ),
                ),

                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HalWidgetVisible()));
                    },
                    icon: const Icon(Icons.widgets_rounded),
                    label: const Text('Widget Visible'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        backgroundColor: Colors.green),
                  ),
                ),
                const SizedBox(height: 10),
                ButtonTheme(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const HalWidgetInvisible()));
                    },
                    icon: const Icon(Icons.widgets_rounded),
                    label: const Text('Widget Invisible'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(300, 50),
                        backgroundColor: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
