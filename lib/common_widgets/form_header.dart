import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader(
      {super.key,
      this.media,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.textAlign,
      required this.title,
      required this.subTitle});
  final String title, subTitle;
  final Widget? media;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        media ?? Container(),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodySmall,
          textAlign: textAlign,
        )
      ],
    );
  }
}
