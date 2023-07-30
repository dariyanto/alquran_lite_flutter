// create midleware for premium user

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_pages.dart';
import '../services/premium_service.dart';

class PremiumMidleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (PremiumService.isPremium()) {
      return null;
    } else {
      return const RouteSettings(name: Routes.PREMIUM);
    }
  }
}