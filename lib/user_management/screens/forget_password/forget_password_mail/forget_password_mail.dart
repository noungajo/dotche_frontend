import 'package:dotche/constants/sizes.dart';
import 'package:dotche/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../common_widgets/form_header.dart';
import '../../../../constants/image_path.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              children: [
                SizedBox(
                  height: defaultSize * 4,
                ),
                FormHeader(
                  title: 'forget_pwd_email_title'.tr,
                  subTitle: 'forget_pwd_email_subTitle'.tr,
                  media: Lottie.asset(login, height: loginImage),
                  crossAxisAlignment: CrossAxisAlignment.center,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: defaultSize,
                ),
                Form(
                    child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: Text(tEmail),
                          hintText: tEmail,
                          prefixIcon: const Icon(Icons.mail_outline_rounded)),
                    ),
                    SizedBox(
                      height: defaultSize * 3,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: elevatedButton, bottom: elevatedButton),
                              child: Text("next".tr),
                            )))
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
