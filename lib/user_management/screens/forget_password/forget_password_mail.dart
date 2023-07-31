import 'package:dotche/constants/sizes.dart';
import 'package:dotche/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common_widgets/form_header.dart';

class ForgetPasswordMail extends StatefulWidget {
  const ForgetPasswordMail({super.key});

  @override
  State<ForgetPasswordMail> createState() => _ForgetPasswordMailState();
}

class _ForgetPasswordMailState extends State<ForgetPasswordMail> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
      padding: EdgeInsets.all(defaultSize),
      child: Column(
        children: [
          SizedBox(
            height: defaultSize * 4,
          ),
          FormHeader(
            title: "forget_password_title".tr,
            subTitle: "forget_password_subtitle".tr,
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
                    prefixIcon: const Icon(Icons.mail_outline_rounded)),
              ),
              SizedBox(
                height: defaultSize,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("next".tr),
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
