import 'package:test/test.dart';
import 'package:bitcoin_calculator/Utilities/tools.dart';

void main() {
//Dollar unit tests
  test('throws ArgumentError on zero dollars', () {
    expect(() => ConversionTools.dollarsToBitcoins(0), throwsArgumentError);
  });

  test('0.5 dollar should be .0000365 bitcoins', () {
    double dollar = ConversionTools.dollarsToBitcoins(0.5);
    expect(dollar, 0.0000365);
  });

  test('1 dollar should be .000073 bitcoins', () {
    double dollar = ConversionTools.dollarsToBitcoins(1);
    expect(dollar, 0.000073);
  });

  test('5 dollar should be .000365 bitcoins', () {
    double dollar = ConversionTools.dollarsToBitcoins(5);
    expect(dollar, 0.000365);
  });

  test('10 dollar should be .000730 bitcoins', () {
    double dollar = ConversionTools.dollarsToBitcoins(10);
    expect(dollar, 0.000730);
  });

//Bitcoin unit tests
  test('throws ArgumentError on zero bitcoins', () {
    expect(() => ConversionTools.dollarsToBitcoins(0), throwsArgumentError);
  });
  test('0.5 bitcoin should be 6796.50 dollars', () {
    double bitcoin = ConversionTools.bitcoinsToDollars(0.5);
    expect(bitcoin, 6796.50);
  });

  test('1 bitcoin should be 13593.00 dollars', () {
    double bitcoin = ConversionTools.bitcoinsToDollars(1);
    expect(bitcoin, 13593.00);
  });

  test('5 bitcoin should be 67965.00 dollars', () {
    double bitcoin = ConversionTools.bitcoinsToDollars(5);
    expect(bitcoin, 67965.00);
  });

  test('10 bitcoin should be 135930.00 dollars', () {
    double bitcoin = ConversionTools.bitcoinsToDollars(10);
    expect(bitcoin, 135930.00);
  });
}
