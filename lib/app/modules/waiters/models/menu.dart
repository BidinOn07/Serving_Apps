class MenuOrder {
  final String id;
  final String photo;
  final String name;
  final String price;
  int quantity;

  MenuOrder({
    required this.id,
    required this.photo,
    required this.name,
    required this.price,
    this.quantity = 0,
  });
}

List<MenuOrder> menuItems = [
  MenuOrder(id: '1',  photo: 'assets/images/1.png',  name: 'Kopi Susu', price: '10.000'),
  MenuOrder(id: '2', photo: 'assets/images/2.png', name: 'Ayam Goreng', price: '15.000'),
  MenuOrder(id: '3', photo: 'assets/images/3.png', name: 'Cemilan', price: '15.000'),
  // ... tambahkan item lainnya jika diperlukan
];

// MenuOrder item1 = MenuOrder(
//     photo: 'assets/images/1.png',
//     name: 'Kopi Susu',
//     price: '15.000',
//     quantity: 0,
//     description: '');
// MenuOrder item2 = MenuOrder(
//     photo: 'assets/images/2.png',
//     name: 'Teh Manis',
//     price: '10.000',
//     quantity: 0,
//     description: '');
// MenuOrder item3 = MenuOrder(
//     photo: 'assets/images/3.png',
//     name: 'Mie Goreng',
//     price: '20.000',
//     quantity: 0,
//     description: '');
