import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/sizes.dart';

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
    this.textColor,
  });

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon; // pour montrer ou pas l'icone en grise
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    var iconColor = isDark ? tprimaryColor : profileIconColor;
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: defaultSize * 1.5,
        height: defaultSize * 1.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: iconColor.withOpacity(0.1),
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall!.apply(
            color:
                textColor), //la propriété apply est pour que si la couleur est fournie on l'applique
      ),
      trailing: endIcon
          ? Container(
              width: defaultSize,
              height: defaultSize,
              decoration: BoxDecoration(
                color: profileIconColorSecondarey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                LineAwesomeIcons.angle_right,
                color: profileIconColorSecondarey,
                size: iconSize,
              ),
            )
          : null,
    );
  }
}
