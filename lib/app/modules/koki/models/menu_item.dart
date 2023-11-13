class MenuItem {
  final String photo;
  final String name;
  final String price;
  final String description;
  int quantity;

  MenuItem({
    required this.photo,
    required this.name,
    required this.price,
    required this.description,
    this.quantity = 0,
  }) : assert(description != null);
}

MenuItem item1 = MenuItem(
    photo: 'assets/images/1.png',
    name: 'Kopi Susu',
    price: '15.000',
    quantity: 0,
    description: '');
MenuItem item2 = MenuItem(
    photo: 'assets/images/2.png',
    name: 'Teh Manis',
    price: '10.000',
    quantity: 0,
    description: '');
MenuItem item3 = MenuItem(
    photo: 'assets/images/3.png',
    name: 'Mie Goreng',
    price: '20.000',
    quantity: 0,
    description: '');
