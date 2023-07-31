import 'package:flutter/material.dart';

import '../../../../constants/text_style.dart';

class OtpHeader extends StatelessWidget {
  const OtpHeader(
      {super.key, this.media, required this.title, required this.subTitle});
  final String title, subTitle;
  final Widget? media;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        media ?? Container(),
        Text(
          title,
          style: codeTitleStyle,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
