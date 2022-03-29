import 'package:flutter/material.dart';

import '../models/item.dart';

class HomePage extends StatelessWidget{
  HomePage({Key? key}) : super(key: key);
  final List<Item> items = [
    Item(name: 'Gulaku 1 kg', price: 12500, image: 'assets/images/gulaku.jpg'),
    Item(name: 'Garam Cap Kapal', price: 2000, image:'assets/images/garam.jpg'),
    Item(name: 'Royco Sapi', price: 500, image:'assets/images/RoycoSapi.png'),
    Item(name: 'Royco Ayam', price: 500, image:'assets/images/RoycoAyam.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Belanjaan"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end,
                        )
                      )
                    ]
                  ),
                ),
              ),
            );
          }
        ),
      )
    );
  }
}
