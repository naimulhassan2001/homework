import 'dart:math';

int compoundCallNumber = 1;
int simpleCallNumber = 1;

compound(int loanAmount, int tenure, int interestRate, Function fn) {
  var rate = interestRate / 100;
  var compoundCapital = loanAmount * (pow((1 + rate), tenure));
  var interest = compoundCapital - loanAmount;
  fn(interest, loanAmount, interestRate, tenure);
}

simple(int loanAmount, int year, int interestRate, Function fn) {
  var rate = interestRate / 100;
  var interest = (loanAmount * rate * year).round();
  fn(interest, loanAmount, interestRate, year);
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

void main() {
  for (int i = 0; i < 5; i++) {

    var loanAmount = Random().nextInt(9) + 1;
    loanAmount *= 100000;

    var tenure = Random().nextInt(8) + 2;

    var interestRate = Random().nextInt(7) + 3;

    compound(loanAmount, tenure, interestRate, compoundInterest);
  }

  for (int i = 0; i < 5; i++) {
    var loanAmount = Random().nextInt(5);
    loanAmount = Random().nextInt(9) + 1;
    loanAmount *= 100000;

    var tenure = Random().nextInt(5);
    tenure = Random().nextInt(8) + 2;

    var interestRate = Random().nextInt(5);
    interestRate = Random().nextInt(7) + 3;

    simple(loanAmount, tenure, interestRate, simpleInterest);
  }
}
