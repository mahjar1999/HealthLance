import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Diagnostics/all_diagnostic.dart';
import 'package:maan_doctor_appoinment/ui/Diagnostics/diagnostic_category_screen.dart';
import 'package:maan_doctor_appoinment/ui/Diagnostics/mt_diagnostics_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';

class DiagnosticsScreen extends StatefulWidget {
  const DiagnosticsScreen({Key? key}) : super(key: key);

  @override
  State<DiagnosticsScreen> createState() => _DiagnosticsScreenState();
}

class _DiagnosticsScreenState extends State<DiagnosticsScreen> {
  List texts = [
    "Injection",
    "Bandages",
    "Medicines",
    "Equipment",
    "Injection",
    "Bandages",
    "Medicines",
    "Equipment",
    "Injection",
    "Bandages",
    "Medicines",
    "Equipment",
  ];

  List colors = [
    kHeartBgColor,
    kKedneyBgColor,
    kLungsBgColor,
    kDaigLungsBGColor,
    kHeartBgColor,
    kKedneyBgColor,
    kLungsBgColor,
    kDaigLungsBGColor,
    kHeartBgColor,
    kKedneyBgColor,
    kLungsBgColor,
    kDaigLungsBGColor,
  ];

  List icons = [
    "assets/images/bone.png",
    "assets/images/cancer.png",
    "assets/images/covid_diag.png",
    "assets/images/lungs.png",
    "assets/images/bone.png",
    "assets/images/cancer.png",
    "assets/images/covid_diag.png",
    "assets/images/lungs.png",
    "assets/images/bone.png",
    "assets/images/cancer.png",
    "assets/images/covid_diag.png",
    "assets/images/lungs.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        elevation: 0,
        toolbarHeight: 60,
        title: Text(
          "Diagnostics",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kTextFieldBorderColor, width: 1)),
                child: Icon(
                  IconlyLight.search,
                  color: kTitleColor,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: context.height() / 4.8,
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/images/diag_doc.png"), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Services Up To",
                        style: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor, fontSize: 18.0),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        "30% OFF",
                        style: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kLikeWhiteColor),
                        child: Center(
                          child: Text(
                            "View More",
                            style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: kbigContainerColor),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Categories",
                          style: ktitleTextStyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: ksubTitleTextStyle,
                        ).onTap(() => const DiagnosticCategory().launch(context)),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    HorizontalList(
                      itemCount: texts.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 102,
                          width: 85,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: colors[index]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                icons[index],
                                width: 45,
                              ),
                              //  color: kLikeWhiteColor,

                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                texts[index],
                                style: TextStyle(color: kLikeWhiteColor),
                              ),
                            ],
                          ),
                        ).onTap(() => const AllDiagnostic().launch(context));
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearby Diagnostics",
                          style: ktitleTextStyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: ksubTitleTextStyle,
                        ).onTap(() => const AllDiagnostic().launch(context)),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    HorizontalList(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: context.width() / 1.7,
                          child: Card(
                            elevation: 0,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 128,
                                  width: context.width(),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                      image: DecorationImage(image: AssetImage("assets/images/diagnostics_lab.png"), fit: BoxFit.fill)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Tested Labs.",
                                        style: TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            IconlyLight.location,
                                            color: kMainColor,
                                            size: 16,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Dhaka Medical, bangladesh",
                                              overflow: TextOverflow.ellipsis,
                                              style: ksubTitleTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            IconlyBold.star,
                                            color: kStarColor,
                                            size: 20,
                                          ),
                                          RichText(
                                              text: TextSpan(text: " 4.5 ", style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor), children: [
                                            TextSpan(text: "(100+ Ratings)", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                          ]))
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ).onTap(() => const DiagnosticsDetailsScreen().launch(context));
                      },
                      itemCount: 4,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Diagnostics",
                          style: ktitleTextStyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: ksubTitleTextStyle,
                        ).onTap(() => const AllDiagnostic().launch(context)),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    HorizontalList(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: context.width() / 1.7,
                          child: Card(
                            elevation: 0,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 128,
                                  width: context.width(),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                      image: DecorationImage(image: AssetImage("assets/images/crist_diag.png"), fit: BoxFit.fill)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Tested Labs.",
                                        style: TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            IconlyLight.location,
                                            color: kMainColor,
                                            size: 16,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Dhaka Medical, bangladesh",
                                              overflow: TextOverflow.ellipsis,
                                              style: ksubTitleTextStyle,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            IconlyBold.star,
                                            color: kStarColor,
                                            size: 20,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                              text: " 4.5 ",
                                              style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                                              children: [
                                                TextSpan(text: "(100+ Ratings)", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
