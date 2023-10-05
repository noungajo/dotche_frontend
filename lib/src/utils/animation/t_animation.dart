import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'animation_controller.dart';
import 'animation_position.dart';

class TAnimation extends StatelessWidget {
  TAnimation(
      {super.key,
      required this.durationInMins,
      required this.animatedPosition,
      required this.child});
  final animationController = Get.put(TAnimationController());
  final int durationInMins;
  final AnimationPosition? animatedPosition;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(microseconds: durationInMins),
        top: animationController.animate.value
            ? animatedPosition!.topAfter
            : animatedPosition!.topBefore,
        left: animationController.animate.value
            ? animatedPosition!.leftAfter
            : animatedPosition!.leftBefore,
        bottom: animationController.animate.value
            ? animatedPosition!.bottomAfter
            : animatedPosition!.bottomBefore,
        right: animationController.animate.value
            ? animatedPosition!.rightAfter
            : animatedPosition!.rightBefore,
        child: AnimatedOpacity(
            opacity: animationController.animate.value ? 1 : 0,
            duration: Duration(milliseconds: durationInMins),
            child: child),
      ),
    );
  }
}
