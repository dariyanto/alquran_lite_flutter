import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/const.dart';

class PremiumService extends GetxService {
  Future<PremiumService> init() async {
    // late PurchasesConfiguration configuration;
    // if (Platform.isAndroid) {
    //   configuration = PurchasesConfiguration(REVENUECAT_APP_ID);
    // }
    // await Purchases.configure(configuration);
    // CustomerInfo customerInfo = await Purchases.getCustomerInfo();
    // updatePremiumStatus(customerInfo);

    // Purchases.addCustomerInfoUpdateListener((customerInfo) {
    //   updatePremiumStatus(customerInfo);
    // });
    return this;
  }

  void updatePremiumStatus() {
    // var isPremium = customerInfo.entitlements.all['Premium'] != null && customerInfo.entitlements.all['Premium']?.isActive == true;
    // Logger().d('isPremium: $isPremium');
    var prefs = Get.find<SharedPreferences>();
    prefs.setBool(IS_PREMIUM, true);
  }

  static bool isPremium() {
    var prefs = Get.find<SharedPreferences>();
    return prefs.getBool(IS_PREMIUM) ?? false;
  }
}
