import 'dart:io';
import 'dart:math';

calculation(int loanAmount, int year, int interestRate) {
  var rate = interestRate / 100;

  var compoundCapital = loanAmount * (pow((1 + rate), year));

  var interest = compoundCapital - loanAmount ;


  stdout.write("\nLoan Amount: $loanAmount") ;
  stdout.write(' | ') ;
  stdout.write("Tenure : $year") ;
  stdout.write(' | ') ;
  stdout.write(" interest Rate : $interestRate") ;
  stdout.write(' | ') ;
  stdout.write("interest Amount: $interest") ;
  stdout.write(' | ') ;
  stdout.write("Compound Capital: $compoundCapital\n");
 // print("-------------------------------------------------------------------------") ;





}


void main() {
  calculation(100000, 3, 5);

}
