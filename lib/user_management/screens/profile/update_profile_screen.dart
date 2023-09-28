import 'package:dotche/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_path.dart';
import '../../../constants/text_string.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  spacer() {
    return SizedBox(
      height: formSpacer,
    );
  }

  var pwdVisibility = true;
  var date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    String dateOfJoined = DateFormat.yMMMMd('fr').format(date);
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
          "title_edith_profile".tr,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        centerTitle: true,
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
                    child: Container(
                      width: defaultSize * 2,
                      height: defaultSize * 2,
                      decoration: BoxDecoration(
                        color: tprimaryColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: iconSize,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: defaultSize * 2,
              ),
              Form(
                  child: Column(
                children: [
                  TextFormField(
                    //controller: getController.fulName,
                    decoration: InputDecoration(
                        label: Text("fullname".tr),
                        prefixIcon: const Icon(LineAwesomeIcons.user)),
                  ),
                  spacer(),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text(tEmail),
                        prefixIcon: const Icon(Icons.email_outlined)),
                  ),
                  spacer(),
                  TextFormField(
                    decoration: InputDecoration(
                        label: Text("tel".tr),
                        prefixIcon: const Icon(LineAwesomeIcons.phone)),
                  ),
                  spacer(),
                  TextFormField(
                    obscureText: pwdVisibility,
                    decoration: InputDecoration(
                        label: Text("tpassword".tr),
                        prefixIcon: const Icon(LineAwesomeIcons.fingerprint),
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
                    height: defaultSize,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(TextSpan(
                          text: '${"joined".tr} ',
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                                text: dateOfJoined,
                                style: Theme.of(context).textTheme.bodyMedium)
                          ])),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent.withOpacity(0.1),
                            elevation: 0,
                            foregroundColor: Colors.red,
                            shape: StadiumBorder(),
                            side: BorderSide.none),
                        child: Text("delete".tr),
                      )
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
