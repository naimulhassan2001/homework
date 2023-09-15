import 'dart:io';
import 'dart:math';

compound(int loanAmount, int year, int interestRate) {
  var rate = interestRate / 100;

  var compoundCapital = loanAmount * (pow((1 + rate), year));

  var interest = compoundCapital - loanAmount ;


  print("Compound interest Rate") ;
  stdout.write("Loan Amount: $loanAmount") ;
  stdout.write(' | ') ;
  stdout.write("Tenure : $year") ;
  stdout.write(' | ') ;
  stdout.write(" interest Rate : $interestRate") ;
  stdout.write(' | ') ;
  stdout.write("interest Amount: $interest") ;
  stdout.write(' | ') ;
  stdout.write("Compound Capital: $compoundCapital\n");
  print("-------------------------------------------------------------------------------------") ;
}


simple(int loanAmount, int year, int interestRate) {
  var rate = interestRate / 100;

  var interest = loanAmount *rate * year ;

  var simpleCapital = interest + loanAmount ;

  print("Simple  interest Rate");
  stdout.write("Loan Amount: $loanAmount") ;
  stdout.write(' | ') ;
  stdout.write("Tenure : $year") ;
  stdout.write(' | ') ;
  stdout.write(" interest Rate : $interestRate") ;
  stdout.write(' | ') ;
  stdout.write("interest Amount: $interest") ;
  stdout.write(' | ') ;
  stdout.write(" simple Capital: $simpleCapital\n");
  // print("-------------------------------------------------------------------------") ;
}


void main() {
  compound(100000, 3, 5);
  simple(100000, 3, 5);

}
