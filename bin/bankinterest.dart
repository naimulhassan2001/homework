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
  var interest = loanAmount * rate * year;
  fn(interest, loanAmount, interestRate, year);
}

var compoundInterest = (num interest, num loanAmount, num interestRate, num tenure) {
  var compoundCapital = loanAmount + interest;

  if (compoundCallNumber == 1) {
    print("Compound interest Rate:");
    print("loan Amount  Tenure  interest Rate  interest Amount     Compound capital");
    compoundCallNumber += 1;
  }

  print("  $loanAmount       $tenure          $interestRate%        $interest   $compoundCapital");
};

var simpleInterest = (num interest, num loanAmount, num interestRate, num tenure) {
  var simpleCapital = interest + loanAmount;

  if (simpleCallNumber == 1) {
    print("\nSimple  interest Rate:");
    print('loan Amount   Tenure   Interest Rate  interest Amount  Simple capital');
    simpleCallNumber += 1;
  }

  print("  $loanAmount        $tenure         $interestRate%              $interest           $simpleCapital");
};

void main() {
  compound(300000, 2, 4, compoundInterest);
  compound(500000, 5, 7, compoundInterest);
  compound(700000, 2, 4, compoundInterest);
  compound(600000, 4, 6, compoundInterest);
  compound(900000, 3, 7, compoundInterest);

  simple(300000, 4, 4, simpleInterest);
  simple(700000, 2, 5, simpleInterest);
  simple(400000, 4, 6, simpleInterest);
  simple(600000, 3, 5, simpleInterest);
  simple(800000, 2, 6, simpleInterest);
}
