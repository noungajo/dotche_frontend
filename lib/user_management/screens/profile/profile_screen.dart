import 'package:dotche/constants/image_path.dart';
import 'package:dotche/constants/sizes.dart';
import 'package:dotche/user_management/screens/profile/widgets/profile_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../../constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: isDark
              ? const Icon(
                  LineAwesomeIcons.angle_left,
                  color: Colors.white,
                )
              : const Icon(
                  LineAwesomeIcons.angle_left,
                  color: Colors.black,
                ),
        ),
        title: Text(
          "title_profile".tr,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
        actions: [
          //modify the brightness of the app
          IconButton(
              onPressed: () {},
              icon: isDark
                  ? const Icon(
                      LineAwesomeIcons.sun,
                      color: Colors.white,
                    )
                  : const Icon(
                      LineAwesomeIcons.moon,
                      color: Colors.black,
                    ))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(defaultSize),
          child: Column(
            children: [
              // image
              Stack(
                children: [
                  SizedBox(
                    width: imageWidth * 3.5,
                    height: imageWidth * 3.5,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image(image: AssetImage(defaultImageProfilePath)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: InkWell(
                      onTap: () => Get.toNamed("/update_profile_screen"),
                      child: Container(
                        width: defaultSize * 2,
                        height: defaultSize * 2,
                        decoration: BoxDecoration(
                          color: tprimaryColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          LineAwesomeIcons.alternate_pencil,
                          color: Colors.black,
                          size: iconSize,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultSize * 0.7,
              ),
              Text("profile_heading".tr,
                  style: Theme.of(context).textTheme.titleLarge),
              Text("profile_sub_heading".tr,
                  style: Theme.of(context).textTheme.bodySmall),
              SizedBox(
                height: defaultSize,
              ),
              //bouton profile edite
              SizedBox(
                width: elevatedButtonWidth,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed("/update_profile_screen"),
                  style: ElevatedButton.styleFrom(
                    //  backgroundColor: tprimaryColor,
                    side: BorderSide.none,
                    //  shape: const StadiumBorder()
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: elevatedButton * 0.7,
                        bottom: elevatedButton * 0.7),
                    child: Text(
                      "title_edith_profile".tr,
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: defaultSize * 1,
              ),
              const Divider(),
              SizedBox(height: defaultSize * 0.7),
              //Menu
              ProfileMenuWidget(
                title: "Setting".tr,
                icon: LineAwesomeIcons.cog,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "detail_text".tr,
                icon: LineAwesomeIcons.wallet,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "user_management_text".tr,
                icon: LineAwesomeIcons.user_check,
                onPress: () {},
              ),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileMenuWidget(
                title: "information_text".tr,
                icon: LineAwesomeIcons.info,
                onPress: () {},
              ),
              ProfileMenuWidget(
                title: "logout".tr,
                icon: LineAwesomeIcons.alternate_sign_out,
                textColor: Colors.red,
                endIcon: false,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
