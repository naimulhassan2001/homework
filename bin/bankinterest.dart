import 'dart:math';

compound(int loanAmount, int tenure, int interestRate, Function fn) {
  var rate = interestRate / 100;
  var compoundCapital = loanAmount * (pow((1 + rate), tenure));
  var interest = compoundCapital - loanAmount ;
  fn(interest, loanAmount, interestRate, tenure) ;
}

simple(int loanAmount, int year, int interestRate, Function fn ) {
  var rate = interestRate / 100;
  var interest = loanAmount *rate * year ;
  fn(interest, loanAmount, interestRate, year ) ;
}


var compounds = (num interest, num loanAmount, num interestRate, num tenure) {

  var compoundCapital = loanAmount+ interest ;



  print("  $loanAmount       $tenure          $interestRate%        $interest   $compoundCapital") ;




} ;


var simples = (num interest, num loanAmount, num interestRate, num tenure) {
  var simpleCapital = interest + loanAmount;

  int number = 0 ;

  if(number == 1) {
    print("Simple  interest Rate");
    print('loan Amount   Tenure   Interest Rate  interest Amount  Siple capital');
    number = number +1  ;
  }


  print("  $loanAmount        $tenure         $interestRate%              $interest        $simpleCapital");


};


  void main() {


    print("Compound interest Rate") ;
    print("loan Amount  Tenure  interest Rate  intterest Amount    Compound capital") ;
    compound(300000, 2, 4, compounds);
    compound(500000, 5, 7, compounds);
    compound(700000, 2, 4, compounds);
    compound(600000, 4, 6, compounds);
    compound(900000, 3, 7, compounds);


  print("\nSimple  interest Rate");
  print('loan Amount   Tenure   Interest Rate  Totul interest   Siple capital');
  simple(300000, 4, 4,simples );
  simple(700000, 2, 5,simples );
  simple(400000, 4, 6,simples );
  simple(600000, 3, 5,simples );
  simple(800000, 2, 5,simples );


}
