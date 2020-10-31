// Imports the Flutter Driver API.
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  final usd = find.byValueKey('usdButton');
  final btc = find.byValueKey('btcButton');
  final usdollarsText = find.byValueKey('usdText');
  final usConvert = find.byValueKey('usdConvert');
  final usResult = find.byValueKey('usdResult');
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
      //when i tap USD to BTC button
      await driver.tap(usd);
      //and i enter 1 in the text field
      await driver.tap(usdollarsText);
      await driver.enterText('1');
      await driver.waitFor(find.text('1'));
      //Then i should see "1.0 dollars is 0.000073 bitcoins"
      Future.delayed(const Duration(seconds: 1));
      await driver.tap(usConvert);
      expect(
          await driver.getText(usResult), "1.0 dollars is 0.000073 bitcoins");
    });
  });
}
