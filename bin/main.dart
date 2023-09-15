import 'dart:io';
import 'dart:math';

calculation(int loanAmount, int year, int interestRate) {
  var rate = interestRate / 100;

  var compoundCapital = loanAmount * (pow((1 + rate), year));

  var interest = compoundCapital - loanAmount ;


  print("");
  stdout.write("Loan Amount: $loanAmount  ") ;
  stdout.write("Year : $year  ") ;
  stdout.write("Rate : $rate  ") ;
  stdout.write("interest : $interest  ") ;
  stdout.write("Compound Capital: $compoundCapital") ;


}

void main() {
  calculation(5000, 2, 12);
  calculation(5000, 2, 12);
}
