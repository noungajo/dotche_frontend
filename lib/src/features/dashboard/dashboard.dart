import 'package:dotche/src/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/colors.dart';
import '../../constants/image_path.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
          title: Text(
            "dashboard_appable".tr,
            style: textTheme.titleMedium?.apply(fontSizeDelta: titleMedium),
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
                  color: profileIconColorSecondarey.withOpacity(0.1)),
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
                  style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                ),
                Text(
                  "dashboard_header".tr,
                  style: textTheme.titleLarge?.apply(fontSizeDelta: titleLarge),
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
                              ?.apply(color: Colors.grey.withOpacity(0.5),fontSizeDelta:titleLarge),
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
                SizedBox(
                  height: 45,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(borderMiniCircular),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "JS",
                                  style: textTheme.bodyMedium
                                      ?.apply(color: Colors.white,fontSizeDelta:bodyMedium),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            // le flexible marche avec le overflow pour que lorsque le texte deborde ça complète par les ...
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "dashboard_banner_title_2".tr,
                                    style: textTheme.bodyMedium?.apply(fontSizeDelta: bodyMedium),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "dashboard_banner_subtitle".tr,
                                    style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(borderMiniCircular),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "JS",
                                  style: textTheme.bodyMedium
                                      ?.apply(color: Colors.white,fontSizeDelta:bodyMedium),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            // le flexible marche avec le overflow pour que lorsque le texte deborde ça complète par les ...
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "dashboard_banner_title_2".tr,
                                    style: textTheme.bodyMedium?.apply(fontSizeDelta: bodyMedium),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "dashboard_banner_subtitle".tr,
                                    style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(borderMiniCircular),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "JS",
                                  style: textTheme.bodyMedium
                                      ?.apply(color: Colors.white,fontSizeDelta:bodyMedium),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            // le flexible marche avec le overflow pour que lorsque le texte deborde ça complète par les ...
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "dashboard_banner_title_2".tr,
                                    style: textTheme.bodyMedium?.apply(fontSizeDelta: bodyMedium),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "dashboard_banner_subtitle".tr,
                                    style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 170,
                        height: 45,
                        child: Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(borderMiniCircular),
                                  color: Colors.black),
                              child: Center(
                                child: Text(
                                  "JS",
                                  style: textTheme.bodyMedium
                                      ?.apply(color: Colors.white,fontSizeDelta:bodyMedium),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            // le flexible marche avec le overflow pour que lorsque le texte deborde ça complète par les ...
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "dashboard_banner_title_2".tr,
                                    style: textTheme.bodyMedium?.apply(fontSizeDelta: bodyMedium),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "dashboard_banner_subtitle".tr,
                                    style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: defaultSize,
                ),
                //Banners
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(borderMiniCircular),
                          color: Colors.grey.withOpacity(0.2)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                  child: Image(
                                      width: 40,
                                      image: AssetImage(
                                          "assets/image/banner2.png"))),
                              Flexible(
                                  child: Image(
                                      width: 100,
                                      image: AssetImage(
                                          "assets/image/banner1.png")))
                            ],
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Text(
                            "dashboard_banner_title_1".tr,
                            style: textTheme.bodyMedium?.apply(fontSizeDelta: bodyMedium),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            "dashboard_banner_subtitle".tr,
                            style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                    )),
                    SizedBox(
                      width: defaultSize,
                    ),
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(borderMiniCircular),
                              color: Colors.grey.withOpacity(0.2)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                      child: Image(
                                          width: 40,
                                          image: AssetImage(
                                              "assets/image/banner2.png"))),
                                  Flexible(
                                      child: Image(
                                          width: 100,
                                          image: AssetImage(
                                              "assets/image/banner1.png")))
                                ],
                              ),
                              Text(
                                "dashboard_banner_title_2".tr,
                                style: textTheme.bodyMedium?.apply(fontSizeDelta: bodyMedium),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                "dashboard_banner_subtitle".tr,
                                style: textTheme.bodySmall?.apply(fontSizeDelta: bodySmall),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: Text("dashboard_button".tr)),
                        )
                      ],
                    ))
                  ],
                )
              ,  // top course
                Text("dashboard_top_courses".tr,style: textTheme.bodyMedium?.apply(fontSizeFactor: 1.2),),//18*1.2
                SizedBox(
                  width: 320,
                  height: 200,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderMiniCircular),color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
//23:13