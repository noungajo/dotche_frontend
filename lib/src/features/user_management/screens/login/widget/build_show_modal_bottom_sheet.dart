import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_string.dart';
import 'forget_password_widget.dart';

void buildSHowModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderCircular)),
      builder: (context) => Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "forget_pwd_title".tr,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text("forget_pwd_subtitle".tr,
                    style: Theme.of(context).textTheme.bodySmall),
                SizedBox(
                  height: defaultSize,
                ),
                // email Icon
                ForgetPasswordBtnWidget(
                  icone: Icons.mail_outline_rounded,
                  title: tEmail,
                  subTitle: "reset_via_email".tr,
                  onTap: () {
                    Get.toNamed("/forget_pwd_mail");
                  },
                ),
                SizedBox(
                  height: defaultSize,
                ),
                // phone Icon
                ForgetPasswordBtnWidget(
                  icone: Icons.mobile_friendly_rounded,
                  title: "tel".tr,
                  subTitle: "reset_via_phone".tr,
                  onTap: () {},
                ),
              ],
            ),
          ));
}
