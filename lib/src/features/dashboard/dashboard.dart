import 'package:dotche/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../constants/image_path.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            "dashboard_appable".tr,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              margin: EdgeInsets.only(
                  right: marginAppBarRight, top: marginAppBarTop),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(borderMiniCircular * 1.5),
                  color: profileIconColorSecondarey),
              child: IconButton(
                onPressed: () {},
                icon: Image(image: AssetImage(imageOuverture)),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Heading
                Text(
                  "dashboard_title".tr,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  "dashboard_header".tr,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: defaultSize,
                ),
                //Search box
                Container(
                  decoration: BoxDecoration(
                      border: Border(left: BorderSide(width: marginAppBarTop))),
                  padding: EdgeInsets.symmetric(
                      horizontal: marginAppBarRight, vertical: marginAppBarTop),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "dashboard_search".tr,
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.apply(color: Colors.grey.withOpacity(0.5)),
                        ),
                        Icon(
                          Icons.mic,
                          size: iconSize,
                        )
                      ]),
                ),
                SizedBox(
                  height: defaultSize,
                ),
                //Categorie
                SizedBox()
              ],
            ),
          ),
        ));
  }
}
