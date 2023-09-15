void main() {
  var age = (int birthYear) {
    return (int currentYear) {
      return currentYear - birthYear;
    };
  };

  var doubleIt = age(2001);
  print(doubleIt(2023)); // 20


  // Home Understanding and make an alternate

  //void main() {
  // var multiplier = (int x) {
  //    return (int y) {
  //      return x * y;
  //   };
  // };

  // var doubleIt = multiplier(2);
  // print(doubleIt(10)); // 20
  //}






}
