double dollars; // 1 dollar/bitcoin 0.000073
double bitcoins; // 1 bitcoin/dollar 13593.00

class ConversionTools {
  static double dollarsToBitcoins(double dollars) {
    if (dollars <= 0) {
      throw ArgumentError();
    }
    // 1 dollar/bitcoin 0.000073
    return dollars * 13593;
  }

  static double bitcoinsToDollars(double bitcoins) {
    if (bitcoins <= 0) {
      throw ArgumentError();
    }
    // 1 bitcoin/dollar 13593.00
    return bitcoins * 0.000073;
  }

  static String string1() {
    var dtotal = dollarsToBitcoins(dollars);
    return dollars.toString() +
        " bitcoins is " +
        dtotal.toString() +
        " dollars";
  }

  static String string2() {
    var btotal = bitcoinsToDollars(bitcoins);
    return bitcoins.toString() +
        " dollars is " +
        btotal.toString() +
        " bitcoins";
  }
}
