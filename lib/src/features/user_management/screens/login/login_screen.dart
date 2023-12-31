import 'package:dotche/src/constants/image_path.dart';
import 'package:dotche/src/constants/text_style.dart';
import 'package:dotche/src/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../../../../common_widgets/form_header.dart';
import '../../../../constants/sizes.dart';
import 'widget/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all((defaultSize)),
            child: Column(
              children: [
                FormHeader(
                    title: "loginTitle".tr,
                    subTitle: "loginSubtitle".tr,
                    media: Lottie.asset(login, height: loginImage)),
                const LoginForm(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: formSpacer,
                    ),
                    Text(
                      "or".tr,
                      style: Theme.of(context).textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                      // style: bodyStyle,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed("/signup");
                        },
                        child: Text.rich(TextSpan(
                            text: "already_have_account".tr.toCapitalized(),
                            style: Theme.of(context).textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                            // style: bodyStyle,
                            children: [
                              TextSpan(
                                  text: "sign_up".tr.toCapitalized(),
                                  style: linkStyle)
                            ])))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
