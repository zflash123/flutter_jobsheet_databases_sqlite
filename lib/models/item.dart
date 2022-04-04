class Item{
  int item_id;
  String item_name;
  String image;
  int item_price;

  int get id => item_id;
  String get name => item_name;

  set name(String value) => item_name = value;

  get price => item_price;
  set price(value) => item_price = value;

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = item_id;
    map['name'] = item_name;
    map['price'] = item_price;
    return map;
  }
}