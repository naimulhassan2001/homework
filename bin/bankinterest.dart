import 'dart:io';
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


void main() {
  compound(100000, 3, 5, (num interest, num loanAmount, num interestRate, num tenure) {

    var compoundCapital = loanAmount+ interest ;

    print("Compound interest Rate") ;

    print("loan Amount: $loanAmount  Tenure: $tenure  interest Rate: $interestRate  intterest Amount: $interest  simple capital: $compoundCapital") ;

    print("-------------------------------------------------------------------------------------") ;
    // stdout.write("Loan Amount: $loanAmount") ;
    // stdout.write(' | ') ;
    // stdout.write("Tenure : $tenure") ;
    // stdout.write(' | ') ;
    // stdout.write(" interest Rate : $interestRate") ;
    // stdout.write(' | ') ;
    // stdout.write("interest Amount: $interest") ;
    // stdout.write(' | ') ;
    // stdout.write("Compound Capital: ${loanAmount+interest}\n");




  });

  simple(100000, 3, 5, (num interest, num loanAmount, num interestRate, num tenure) {

    var simpleCapital = interest + loanAmount ;

    print("Simple  interest Rate");

    print("loan Amount: $loanAmount  Tenure: $tenure  interest Rate: $interestRate interest Amount: $interest  siple capital: $simpleCapital") ;
     print("---------------------------------------------------------------------------------------") ;
    // stdout.write("Loan Amount: $loanAmount") ;
    // stdout.write(' | ') ;
    // stdout.write("Tenure : $tenure") ;
    // stdout.write(' | ') ;
    // stdout.write(" interest Rate : $interestRate") ;
    // stdout.write(' | ') ;
    // stdout.write("interest Amount: $interest") ;
    // stdout.write(' | ') ;
    // stdout.write(" simple Capital: $simpleCapital\n");


  });

}
