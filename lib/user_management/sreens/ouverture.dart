import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../../constants/image_path.dart';
import '../../constants/numeric_value.dart';
import '../../constants/sizes.dart';
import '../../utils/animation/animation_controller.dart';
import '../../utils/animation/animation_position.dart';
import '../../utils/animation/t_animation.dart';
import '../../utils/user_session/storage.dart';

/*
  la première interface puis naviguer à l'interface de HomeCategori ou de création de compte si c'est la première utilisation
*/
// ignore: use_key_in_widget_constructors
/*class Ouverture extends StatefulWidget {
  final Storage storage = Storage();
  @override
  State<Ouverture> createState() => _OuvertureState();
}

class _OuvertureState extends State<Ouverture> {
  @override
  void initState() {
    //  Future.delayed(
    //     const Duration(seconds: 3),
    //     {

    //     });
    Future.delayed(Duration(seconds: openTimer), () {
      Get.offNamed("/login");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          ouverture,
          //width: logoWidth, //size.width * 0.6
        ),
      ),
    );
  }
}*/
class Ouverture extends StatelessWidget {
  Ouverture({super.key});
  final Storage storage = Storage();
  final controller = Get.put(TAnimationController());

  @override
  Widget build(BuildContext context) {
    controller.startAnimation();
    return Scaffold(
      body: Center(
        child: Lottie.asset(ouverture, height: loginImage),
      ),
    );
  }
}
