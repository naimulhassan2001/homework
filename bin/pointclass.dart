class Point {
  int x;
  int y;

  Point(this.x, this.y);

  show() {
    print("x: $x, y: $y");
  }
}

class Condenet extends Point {
  int z;

  Condenet(super.x, super.y, this.z);

  @override
  show() {
    // TODO: implement show
    print("x: $x, y: $y, z: $z");
  }
}

main() {
  var condenet = Condenet(10, 20, 30);
  condenet.show();
}
