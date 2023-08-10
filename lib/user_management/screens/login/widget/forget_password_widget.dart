import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';

// ignore: must_be_immutable
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
            borderRadius: BorderRadius.circular(borderMiniCircular * 2),
            color: Colors.grey.shade200),
        child: Row(children: [
          Icon(
            icone,
            size: forgotPwdSize,
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
