import 'package:flutter/material.dart';
import 'package:flutter_jobsheet_navigation_belanja/models/item.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 300,
              child: Image.asset(itemArgs.image)
            ),
            const SizedBox(height: 13),
            Text(
              'Nama Barang: '+itemArgs.name+'\nHarga Barang: Rp'+ itemArgs.price.toString()+',00',
              style: const TextStyle(fontSize: 25, color: Colors.black)
            ),
          ],
        ),
      ),
    );
  }
}