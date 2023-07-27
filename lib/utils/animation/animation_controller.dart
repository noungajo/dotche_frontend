import 'package:get/get.dart';

import '../../user_management/sreens/login/login_screen.dart';

class TAnimationController extends GetxController {
  static TAnimationController get find => Get.find();
  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(const Duration(microseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.offAll(() => const LoginScreen());
  }
}
