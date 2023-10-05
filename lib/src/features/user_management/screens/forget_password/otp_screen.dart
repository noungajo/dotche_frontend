import 'package:dotche/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/image_path.dart';
import '../../../../constants/numeric_value.dart';
import 'widget.dart/otp_header.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(defaultSize),
          child: SingleChildScrollView(
            child: Column(
              children: [
                OtpHeader(
                    title: "CO\nDE".tr,
                    subTitle: "otp_subtitle".tr.toUpperCase(),
                    media: Lottie.asset(otpLottie, height: loginImage)),
                SizedBox(
                  height: defaultSize * 3,
                ),
                OtpTextField(
                  numberOfFields: numberOfFields,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    // LengthLimitingTextInputFormatter(1), //un seul nombre
                    FilteringTextInputFormatter.digitsOnly //un seul chiffre
                  ],
                  fieldWidth: otpWidth,
                  fillColor: Colors.black.withOpacity(0.1),
                  filled: true,
                  onSubmit: (code) {
                    print("Récupérer la valeur =>$code");
                  },
                ),
                SizedBox(
                  height: defaultSize * 2,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: elevatedButton, bottom: elevatedButton),
                      child: Text("next".tr),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
