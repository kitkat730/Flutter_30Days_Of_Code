class CatalogModel
{
  static final items =[
      Item(id :1,
      name : "One Plus Nord 2",
      desc : "8 GB RAM Milega",
      price : 999,
      color: "#33505a",
      imageUrl : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc")
      
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Item({this.id = -1, this.name = '', this.desc = '',  this.price = -1, this.color = '', this.imageUrl = ''});
}
