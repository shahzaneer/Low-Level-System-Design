import 'AndroidCharger.dart';
import 'IphoneCharger.dart';

class AdapterChargerForIphone implements IphoneCharger {
  AndroidCharger charger;
  AdapterChargerForIphone({required this.charger});
  @override
  void chargeIphone() {
    charger.chargeAndroid();
    print("Charging Iphone via Android Charger");
  }
}

class AdapterChargerForAndroid implements AndroidCharger {
  IphoneCharger charger;
  AdapterChargerForAndroid({required this.charger});
  @override
  void chargeAndroid() {
    charger.chargeIphone();
    print("Charging Android via Iphone Charger");
  }
}
