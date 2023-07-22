import 'Adaptor.dart';
import 'AndroidCharger.dart';
import 'IphoneCharger.dart';
import 'Samsung_s3.dart';
import 'iphone_14_pro_max.dart';
import 'salcomp_charger.dart';
import 'samsung_charger.dart';

void main(List<String> args) {
  //! Normal Flow
  // Iphone14ProMax iphone = Iphone14ProMax(iphoneCharger: SalcomCharger());
  // iphone.chargeIphone14ProMax();

  // SamsungS3 samsungS3 = SamsungS3(androidCharger: SamsungCharger());
  // samsungS3.chargeSamsungS3();

  //! Now if we have a iphone Charger and we need to Charge Android Phone
  IphoneCharger iphoneCharger = new SalcomCharger();
  SamsungS3 samsungS3 = new SamsungS3(
      androidCharger: AdapterChargerForAndroid(charger: iphoneCharger));

  samsungS3.chargeSamsungS3();

  // ! similarly we can do the opposite via AdapterChargerForIphone
}
