import 'package:flutter/material.dart';
import 'package:coba_tanio_202053010/itemWidgetVisible.dart';

class HalWidgetVisible extends StatefulWidget {
  const HalWidgetVisible({super.key});
  @override
  State<HalWidgetVisible> createState() => _HalWidgetVisibleState();
}

class _HalWidgetVisibleState extends State<HalWidgetVisible> {
//mengatur nilai padding
  final double horizontalPadding = 40;
  final double verticalPadding = 25;
//data atau daftar widget visible
  List daftarWidgetVisible = [
    ["Text", "icons/text.png", false],
    ["Icon", "icons/icon.png", false],
    ["Button", "icons/button.png", false],
    ["Image", "icons/image.png", false],
  ];
//function toggle info
  void toggleInfo(bool value, int index) {
    setState(() {
      daftarWidgetVisible[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//custom app bar
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.arrow_circle_left),
                      color: Colors.blue,
                      iconSize: 50),
                  SizedBox(
                    width: 100,
                    height: 75,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                  image: AssetImage('images/foto_profil.png'))),
                        ),
                        const SizedBox(
                          child: Text('202053010 - Tanio',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
//teks pembuka
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Halaman',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  Text('Visible Widget',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold))
                ],
              ),
            ),
//item widget + grid
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: const Text(
                'Silahkan pilih : ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: GridView.builder(
                    itemCount: daftarWidgetVisible.length,
                    padding: const EdgeInsets.all(25),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
                    ),
                    itemBuilder: (context, index) {
                      return ItemWidgetVisible(
                        namaItemWidget: daftarWidgetVisible[index][0],
                        iconPath: daftarWidgetVisible[index][1],
                        infoWidgetOn: daftarWidgetVisible[index][2],
                        onChanged: (value) => toggleInfo(value, index),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
