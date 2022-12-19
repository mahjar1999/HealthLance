import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Nursing%20Care/mt_1_day_pack.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class FullDayPackScreen extends StatelessWidget {
  const FullDayPackScreen({Key? key, required this.name, required this.imageUrl}) : super(key: key);

  final String imageUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kLikeWhiteColor,
          elevation: 0,
          title: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                name,
                style: ktitleTextStyle,
              )
            ],
          ),
          leading: BackButton(
            color: kTitleColor,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: kHeartBgColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 1",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "1 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$500",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(() => const OneDayPackScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: kKedneyBgColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 2",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "3 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$700",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(() => const OneDayPackScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: kLungsBgColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 3",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "5 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$800",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(() => const OneDayPackScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: kDaigLungsBGColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 4",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "7 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$900",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(() => const OneDayPackScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: kHeartBgColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 5",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "10 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$1000",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(
                      () => const OneDayPackScreen().launch(context),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: k15DaysBGColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 6",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "15 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$1200",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(
                      () => const OneDayPackScreen().launch(context),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: kLungsBgColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 7",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "20 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$2000",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(
                      () => const OneDayPackScreen().launch(context),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: AlignmentDirectional.center, children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(color: k30DaysBGColor),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 10.0),
                                    child: Image.asset(
                                      "assets/images/Ellipse 792.png",
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: 40,
                              child: Text(
                                "packs 7",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.w900, color: kLikeWhiteColor),
                              ),
                            )
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "30 Day Packs",
                                style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                              ),
                              RichText(
                                  text: TextSpan(text: "Price:", style: TextStyle(color: kSubTitleColor, fontWeight: FontWeight.w500), children: [
                                const WidgetSpan(
                                    child: SizedBox(
                                  width: 4,
                                )),
                                TextSpan(
                                  text: "\$3000",
                                  style: TextStyle(
                                    color: kMainColor,
                                  ),
                                )
                              ])),
                            ],
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),
                          ),
                        ],
                      ),
                    ).onTap(
                      () => const OneDayPackScreen().launch(context),
                    ),
                  ],
                ),
              )),
        ));
  }
}
