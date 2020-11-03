// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  final usd = find.byValueKey('usdButton');
  final btc = find.byValueKey('btcButton');
  final usdollarsText = find.byValueKey('usdText');
  final bitcoinText = find.byValueKey('btcText');
  final usConvert = find.byValueKey('usdConvert');
  final bitConvert = find.byValueKey('btcConvert');
  final usResult = find.byValueKey('usdResult');
  final bitResult = find.byValueKey('btcResult');
  final dTB = find.byValueKey('usdToB');
  final bTD = find.byValueKey('btcTD');
  final mainT = find.byValueKey('mainT');
  FlutterDriver driver;

  // Connect to the Flutter driver before running any tests.
  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  // Close the connection to the driver after the tests have completed.
  tearDownAll(() async {
    if (driver != null) {
      driver.close();
    }
  });

  group('Happy paths', () {
    test("convert 1 dollar to bitcoins", () async {
      //when I tap USD to BTC button
      await driver.tap(usd);
      //and I enter 1 in the text field
      await driver.tap(usdollarsText);
      await driver.enterText('1');
      await driver.waitFor(find.text('1'));
      //Then I should see "1.0 dollars is 0.000073 bitcoins"
      Future.delayed(const Duration(seconds: 1));
      await driver.tap(usConvert);
      expect(
          await driver.getText(usResult), "1.0 dollars is 0.000073 bitcoins");
    });
    test("convert 1 bitcoin to dollars", () async {
      //when I tap BTC to USD button
      await driver.tap(btc);
      //and I enter 1 in the text field
      await driver.tap(bitcoinText);
      await driver.enterText('1');
      await driver.waitFor(find.text('1'));
      //Then I should see "1.0 bitcoins is 13593.00 dollars"
      Future.delayed(const Duration(seconds: 1));
      await driver.tap(bitConvert);
      expect(
          await driver.getText(bitResult), "1.0 bitcoins is 13593.00 dollars");
    });
  });

  group('Sad paths', () {
    /*
      When I'm on the dollars screen and press the convert button without having 
      put in an amount, I should still be in the dollars screen
    */
    test("Should not advance to dollar result screen without amount", () async {
      await driver.tap(usd);
      Future.delayed(const Duration(seconds: 1));
      await driver.tap(bitConvert);
      expect(await driver.getText(dTB), "Dollars to Bitcoin");
    });
    /*
      When I'm on the bitcoin screen and press the convert button without having 
      put in an amount, I should still be in the bitcoin screen
    */
    test("Should not advance to bitcoin result screen without amount",
        () async {
      await driver.tap(btc);
      Future.delayed(const Duration(seconds: 1));
      await driver.tap(usConvert);
      expect(await driver.getText(bTD), "Bitcoin to Dollars");
    });
  });
  /*
      When I'm on the bitcoin screen and press the back button, it should take me back to the main screen
    */
  test("Back button should take me back to the previous page", () async {
    await driver.tap(btc);
    Future.delayed(const Duration(seconds: 1));
    await driver.tap(find.byTooltip('Back'));
    expect(await driver.getText(mainT), "BTC-USD Conversion App");
  });

  /*
      When I'm on the dollar screen and press the back button, it should take me back to the main screen
    */
  test("Back button should take me back to the previous page", () async {
    await driver.tap(usd);
    Future.delayed(const Duration(seconds: 1));
    await driver.tap(find.byTooltip('Back'));
    expect(await driver.getText(mainT), "BTC-USD Conversion App");
  });
}
