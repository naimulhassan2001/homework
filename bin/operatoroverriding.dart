class Point {
  int x;
  int y;
  Point({required this.x, required this.y});

  @override
  operator +(o) {
    var x = o.x + this.x;
    var y = o.y + this.y;
    return "x: $x, y: $y";
  }
}

void main() {
  var p1 = Point(x: 10, y: 20);
  var p2 = Point(x: 10, y: 20);

  var p3 = p1 + p2; // p3.x //20 p3.y //40 // +Perator

  print(p3);
}
