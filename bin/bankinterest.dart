import 'dart:math';

class CompoundInterest {

  static int compoundCallNumber = 1;

  compound(int loanAmount, int tenure, int interestRate, Function fn) {
    var rate = interestRate / 100;
    var compoundCapital = loanAmount * (pow((1 + rate), tenure));
    var interest = compoundCapital - loanAmount;
    fn(interest, loanAmount, interestRate, tenure);
  }

  var compoundInterest =
      (num interest, num loanAmount, num interestRate, num tenure) {
    var compoundCapital = loanAmount + interest;

    if (compoundCallNumber == 1) {
      print("Compound interest Rate:");
      print(
          "loan Amount  Tenure  interest Rate  interest Amount     Compound capital");
      compoundCallNumber += 1;
    }

    print(
        "  $loanAmount       $tenure          $interestRate%        $interest   $compoundCapital");
  };
}

class SimpleInterest {

  static int simpleCallNumber = 1;

  simple(int loanAmount, int tenure, int interestRate, Function fn) {
    var rate = interestRate / 100;
    var interest = (loanAmount * rate * tenure).round();
    fn(interest, loanAmount, interestRate, tenure);
  }

  var simpleInterest =
      (num interest, num loanAmount, num interestRate, num tenure) {
    var simpleCapital = interest + loanAmount;

    if (simpleCallNumber == 1) {
      print("\nSimple  interest Rate:");
      print(
          'loan Amount   Tenure   Interest Rate  interest Amount  Simple capital');
      simpleCallNumber += 1;
    }

    print(
        "  $loanAmount        $tenure         $interestRate%              $interest           $simpleCapital");
  };
}

void main() {
  for (int i = 0; i < 5; i++) {
    var loanAmount = Random().nextInt(9) + 1;
    loanAmount *= 100000;

    var tenure = Random().nextInt(8) + 2;

    var interestRate = Random().nextInt(7) + 3;

    CompoundInterest().compound(
        loanAmount, tenure, interestRate, CompoundInterest().compoundInterest);
  }

  for (int i = 0; i < 5; i++) {
    var loanAmount = Random().nextInt(9) + 1;

    loanAmount *= 100000;

    var tenure = Random().nextInt(8) + 2;

    var interestRate = Random().nextInt(7) + 3;

    SimpleInterest().simple(
        loanAmount, tenure, interestRate, SimpleInterest().simpleInterest);
  }
}
