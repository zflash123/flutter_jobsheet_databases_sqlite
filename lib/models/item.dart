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

  // konstruktor versi 1
  Item({item_name, item_price});
}