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
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(borderMiniCircular)),
                    builder: (context) => Container(
                          padding: EdgeInsets.all(defaultSize),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "forget_pwd_title".tr,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Text("forget_pwd_subtitle".tr,
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              SizedBox(
                                height: defaultSize,
                              ),
                              ForgetPasswordBtnWidget(
                                icone: Icons.mail_outline_rounded,
                                title: tEmail,
                                subTitle: "reset_via_email".tr,
                                onTap: () {},
                              ),
                              SizedBox(
                                height: defaultSize,
                              ),
                              ForgetPasswordBtnWidget(
                                icone: Icons.mobile_friendly_rounded,
                                title: "tel".tr,
                                subTitle: "reset_via_phone".tr,
                                onTap: () {},
                              ),
                            ],
                          ),
                        ));
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
                onPressed: () {},
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

class ForgetPasswordBtnWidget extends StatelessWidget {
  ForgetPasswordBtnWidget(
      {super.key,
      required this.icone,
      required this.title,
      required this.subTitle,
      required this.onTap});
  IconData icone;
  String title;
  String subTitle;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(defaultSize),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderMiniCircular),
            color: Colors.green.shade200),
        child: Row(children: [
          Icon(
            icone,
            size: 60,
          ),
          SizedBox(
            width: defaultSize / 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.bodyMedium),
              Text(subTitle, style: Theme.of(context).textTheme.bodySmall)
            ],
          ),
        ]),
      ),
    );
  }
}
