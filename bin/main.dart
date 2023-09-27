class Book {
  String title;
  int price = 0;
  Book({this.title = '', this.price = 0});
}

void main() {
  var people = [
    Book(title: 'book1', price: 100),
    Book(title: 'book2', price: 200),
    Book(title: 'book3', price: 300),
    Book(title: 'book4', price: 400),
    Book(title: 'book5', price: 500),
  ];
  List list = [];
  for (var person in people) {
    list.add(person.price);
  }

  var sum = list.reduce((v, e) => v + e);

  print(sum);
}
