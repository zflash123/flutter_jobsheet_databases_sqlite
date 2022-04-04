class Item {
  int _id;
  String _name;
  int _price;

  int get id => _id;

  String get name => _name;
  set name(String value) => _name = value;

  get price => price;
  set price(value) => _price = value;

  // konstruktor versi 1
  Item(this._name, this._price);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    _id = map['id'];
    _name = map['name'];
    _price = map['price'];
  }

  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = _id;
    map['name'] = name;
    map['price'] = price;
    return map;
  }
}
