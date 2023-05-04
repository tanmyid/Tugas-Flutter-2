import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HalProfil extends StatelessWidget {
  const HalProfil({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_circle_left)),
        title: const Text('Profil Saya',
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
//gambar profil
              SizedBox(
                width: 120,
                height: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: const Image(
                        image: AssetImage('images/foto_profil.png'))),
              ),
              const SizedBox(height: 10),
//nama & akun email
              const Text('202053010 - Tanio',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const Text('mohammadtanio@gmail.com',
                  style: TextStyle(fontSize: 14)),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.facebook),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.blue)),
                  ElevatedButton(
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.twitter),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.blue)),
                  ElevatedButton(
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.youtube),
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: Colors.blue)),
                ],
              ),
              const SizedBox(height: 20),
              const Divider(color: Colors.grey),
//form input
              Form(
                  child: Column(
                children: [
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: 'Mohammad Tanio Manunggal',
                    decoration: const InputDecoration(
                        label: Text('Nama Lengkap'),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: 'mohammadtanio@gmail.com',
                    decoration: const InputDecoration(
                        label: Text('Email'),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue:
                        'Desa Japan RT 03 RW 05 Kecamatan Dawe Kabupaten Kudus',
                    decoration: const InputDecoration(
                        label: Text('Alamat'),
                        prefixIcon: Icon(Icons.home),
                        border: OutlineInputBorder()),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: '202053010',
                    decoration: const InputDecoration(
                        label: Text('NIM'),
                        prefixIcon: Icon(Icons.numbers_outlined),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: 'Laki Laki',
                    decoration: const InputDecoration(
                        label: Text('Jenis Kelamin'),
                        prefixIcon: Icon(Icons.male_rounded),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    initialValue: '19 Juni 2022',
                    decoration: const InputDecoration(
                        label: Text('Tanggal Lahir'),
                        prefixIcon: Icon(Icons.date_range),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(height: 10),
                  ButtonTheme(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        tampilPeringatan(context);
                      },
                      icon: const Icon(Icons.save),
                      label: const Text('Simpan'),
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                          backgroundColor: Colors.green),
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

//function & form notifikasi
void tampilPeringatan(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Notifikasi!"),
        content: const Text("Simpan data berhasil!"),
        actions: <Widget>[
          ElevatedButton(
            child: const Text("Oke"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
