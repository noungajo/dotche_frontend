import 'package:dotche/constants/image_path.dart';
import 'package:dotche/constants/text_string.dart';
import 'package:dotche/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../common_widgets/form_header.dart';
import '../../../constants/sizes.dart';
import 'widget/signup_form_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                FormHeader(
                    title: "signup_title".tr,
                    subTitle: "signup_subTitle".tr,
                    media: Lottie.asset(login, height: loginImage)),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("Or"),
                    /*
bouton du style bordure. si on veut l'icon juste .icon c'est la même chose que le textButton au lieu d'utiliser une row
                
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: Image(image: AssetImage(login)),
                          label: const Text("Sign-in with Google")),
                    ),    */
                    TextButton(
                        onPressed: () {
                          Get.toNamed("/login");
                        },
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                              text: "alreadyHaveAnAccount".tr,
                              style: Theme.of(context).textTheme.bodySmall),
                          TextSpan(
                            text: " ${"login".tr}",
                          )
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
