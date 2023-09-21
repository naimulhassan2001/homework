class Point{
  int x = 0;
  int y = 0;
  Point(this.x, this.y);

  @override
  String toString() {
    return " Instance of '$runtimeType' ${DateTime.now()}";
  }
}
void main() {
  Point point = Point(10, 20);
  print(point.toString());
}