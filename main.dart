import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UTS Flutter',
      home: ShoesList(),
    );
  }
}

class ShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        title: Text('Shoes'),
      body: ListView(
        children: [
          ShoesItem(
            imageUrl: 'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            name: 'Nike SB Zoom Blazer mid premium',
          ),
          ShoesItem(
            imageUrl: 'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            name: 'Nike Air Zoom Pegauss',
          ),
          ShoesItem(
            imageUrl: 'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            name: 'Nike ZoomX Vaporfly',
          ),
          ShoesItem(
            imageUrl: 'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            name: 'Nike Air Force 1 S50 ',
          ),
          ShoesItem(
            imageUrl: 'https://www.freepnglogos.com/uploads/shoes-png/shoes-wasatch-running-3.png',
            name: 'Nike Waffle One',
          ),

        ],
      ),
    );
  }
}

class ShoesItem extends StatelessWidget {
  final String imageUrl;
  final String name;

  ShoesItem({required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(
          imageUrl,
          height: 80, // Set the height of the image
          width: 80, // Set the width of the image
        ),
        title: Text(name),
    trailing: Image.network(
    imageUrl, // Gunakan URL gambar yang sama
    height: 40, // Atur tinggi gambar
    width: 40, // Atur lebar gambar
      ),
    );
  }
}
