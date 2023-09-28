import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';

class SignUpFormWidget extends StatefulWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  State<SignUpFormWidget> createState() => _SignUpFormWidgetState();
}

class _SignUpFormWidgetState extends State<SignUpFormWidget> {
  spacer() {
    return SizedBox(
      height: formSpacer,
    );
  }

  var pwdVisibility = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: formWidth,
      ),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            //controller: getController.fulName,
            decoration: InputDecoration(
                label: Text("fullname".tr),
                prefixIcon: const Icon(LineAwesomeIcons.user)),
          ),
          spacer(),
          TextFormField(
            decoration: InputDecoration(
                label: Text(tEmail),
                prefixIcon: const Icon(Icons.email_outlined)),
          ),
          spacer(),
          TextFormField(
            decoration: InputDecoration(
                label: Text("tel".tr),
                prefixIcon: const Icon(LineAwesomeIcons.phone)),
          ),
          spacer(),
          TextFormField(
            obscureText: pwdVisibility,
            decoration: InputDecoration(
                label: Text("tpassword".tr),
                prefixIcon: const Icon(Icons.fingerprint),
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
          spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                Get.toNamed("/otp_screen");
              },
              child: Padding(
                padding: EdgeInsets.only(
                    top: elevatedButton, bottom: elevatedButton),
                child: Text("sign_up".tr.toUpperCase()),
              ),
            ),
          )
        ],
      )),
    );
  }
}
