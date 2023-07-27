import 'package:flutter/material.dart';

class FormHeader extends StatelessWidget {
  const FormHeader(
      {super.key, this.media, required this.title, required this.subTitle});
  final String title, subTitle;
  final Widget? media;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        media ?? Container(),
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
