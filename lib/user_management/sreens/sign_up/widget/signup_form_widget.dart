import 'package:dotche/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

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
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.only(left: iconPadding, right: iconPadding),
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: iconSize,
                  ),
                )),
          ),
          spacer(),
          TextFormField(
            decoration: InputDecoration(
                label: Text(tEmail),
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.only(left: iconPadding, right: iconPadding),
                  child: Icon(
                    Icons.email_outlined,
                    size: iconSize,
                  ),
                )),
          ),
          spacer(),
          TextFormField(
            decoration: InputDecoration(
                label: Text("tel".tr),
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.only(left: iconPadding, right: iconPadding),
                  child: Icon(
                    Icons.numbers,
                    size: iconSize,
                  ),
                )),
          ),
          spacer(),
          TextFormField(
            obscureText: pwdVisibility,
            decoration: InputDecoration(
                label: Text("tpassword".tr),
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.only(left: iconPadding, right: iconPadding),
                  child: Icon(
                    Icons.fingerprint,
                    size: iconSize,
                  ),
                ),
                suffixIcon: Padding(
                  padding: EdgeInsets.only(right: iconPadding),
                  child: IconButton(
                      onPressed: () {
                        setState(() {
                          pwdVisibility = !pwdVisibility;
                        });
                      },
                      icon: pwdVisibility
                          ? Icon(
                              Icons.remove_red_eye_sharp,
                              size: iconSize,
                            )
                          : Icon(
                              Icons.visibility_off,
                              size: iconSize,
                            )),
                )),
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
                child: Text(
                  "signUp".tr.toUpperCase(),
                  style: buttonStyle,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
