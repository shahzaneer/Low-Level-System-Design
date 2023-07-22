import 'AndroidCharger.dart';

class SamsungS3 {
  AndroidCharger androidCharger;

  SamsungS3({required this.androidCharger});

  void chargeSamsungS3() {
    androidCharger.chargeAndroid();
  }
}
