import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            decoration: InputDecoration(
                label: Text("fullname".tr),
                prefixIcon: const Icon(Icons.person_outline_rounded)),
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
                label: Text("tel".tr), prefixIcon: const Icon(Icons.numbers)),
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
              onPressed: () {},
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
