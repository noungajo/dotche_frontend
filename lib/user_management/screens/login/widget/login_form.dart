import 'package:dotche/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../../../../constants/text_style.dart';
import 'build_show_modal_bottom_sheet.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var pwdVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: defaultSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // email
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person_outline_outlined),
              labelText: tEmail,
            ),
          ),
          SizedBox(
            height: formSpacer,
          ),
          //password
          TextFormField(
            obscureText: pwdVisibility,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint_outlined),
                labelText: "tpassword".tr,
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        pwdVisibility = !pwdVisibility;
                      });
                    },
                    icon: pwdVisibility
                        ? const Icon(Icons.remove_red_eye_sharp)
                        : const Icon(Icons.visibility_off))),
          ),
          SizedBox(
            height: formSpacer,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                buildSHowModalBottomSheet(context);
              },
              child: Text(
                "tLogin".tr.toTitleCase(),
                style: linkStyle,
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(),
                onPressed: () => Get.toNamed("/profile_screen"),
                // style: styleBoutonSuivant(
                //     elevetadBackgroundColor, textElevatedColor),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: elevatedButton, bottom: elevatedButton),
                  child: Text(
                    "login".tr.toCapitalized(),
                    // style: buttonStyle,
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
