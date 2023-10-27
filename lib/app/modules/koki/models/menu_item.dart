class MenuItem {
  final String photo;
  final String name;
  final String price;
  int quantity;

  MenuItem({
    required this.photo,
    required this.name,
    required this.price,
    this.quantity = 0,
  });
}

MenuItem item1 = MenuItem(
    photo: 'assets/images/1.png',
    name: 'Kopi Susu',
    price: '15.000',
    quantity: 0);
MenuItem item2 = MenuItem(
    photo: 'assets/images/2.png',
    name: 'Teh Manis',
    price: '10.000',
    quantity: 0);
MenuItem item3 = MenuItem(
    photo: 'assets/images/3.png',
    name: 'Mie Goreng',
    price: '20.000',
    quantity: 0);
