
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

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
    GetStorage().write(IS_PREMIUM, isPremium);
  }

  static bool isPremium() {
    return GetStorage().read(IS_PREMIUM) ?? false;
  }
}
