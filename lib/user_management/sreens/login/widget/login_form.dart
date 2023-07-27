import 'package:dotche/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_string.dart';
import '../../../../constants/text_style.dart';

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
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: iconPadding, right: iconPadding),
                child: Icon(
                  Icons.email_outlined,
                  size: iconSize,
                ),
              ),
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
                prefixIcon: Padding(
                  padding:
                      EdgeInsets.only(left: iconPadding, right: iconPadding),
                  child: Icon(
                    Icons.fingerprint,
                    size: iconSize,
                  ),
                ),
                labelText: "tpassword".tr,
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
          SizedBox(
            height: formSpacer,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
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
                onPressed: () {},
                // style: styleBoutonSuivant(
                //     elevetadBackgroundColor, textElevatedColor),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: elevatedButton, bottom: elevatedButton),
                  child: Text(
                    "login".tr.toCapitalized(),
                    style: buttonStyle,
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
