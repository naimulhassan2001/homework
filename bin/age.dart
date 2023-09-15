void main() {
  var age = (int birthYear) {
    return (int currentYear) {
      return currentYear - birthYear;
    };
  };

  var doubleIt = age(2001);
  print(doubleIt(2023)); // 20
}
