import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_near_by_pharmacy.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_pharmacy_categories.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_pharmacy_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Home/Doctor Appoinment/mt_heart.dart';
import '../Styles/style.dart';

class PharmacyScreen extends StatefulWidget {
  const PharmacyScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyScreen> createState() => _PharmacyScreenState();
}

class _PharmacyScreenState extends State<PharmacyScreen> {
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
    kDentalBgColor,
    kKedneyBgColor,
    kLungsBgColor,
    kHeartBgColor,
    kDentalBgColor,
    kKedneyBgColor,
    kLungsBgColor,
    kHeartBgColor,
    kDentalBgColor,
    kKedneyBgColor,
    kLungsBgColor,
  ];

  List icons = [
    "assets/images/injection.png",
    "assets/images/bandegs.png",
    "assets/images/medicins.png",
    "assets/images/tharmometer.png",
    "assets/images/injection.png",
    "assets/images/bandegs.png",
    "assets/images/medicins.png",
    "assets/images/tharmometer.png",
    "assets/images/injection.png",
    "assets/images/bandegs.png",
    "assets/images/medicins.png",
    "assets/images/tharmometer.png",
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
          "Pharmacy",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
        actions: [
          Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kTextFieldBorderColor, width: 1)),
              child: Icon(
                IconlyLight.search,
                color: kTitleColor,
              )),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: kTextFieldBorderColor, width: 1)),
              child: Badge(
                  badgeColor: kBadgeColor,
                  position: const BadgePosition(top: -8, end: -5),
                  padding: const EdgeInsets.all(3),
                  borderRadius: BorderRadius.circular(40),
                  badgeContent: Text(
                    "2",
                    style: TextStyle(color: kLikeWhiteColor),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: kTitleColor,
                  )),
            ),
          )
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
                height: context.height() / 5,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("assets/images/pharmacy_main.png"),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Services Up To",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLikeWhiteColor,
                            fontSize: 18.0),
                      ),
                      Text(
                        "30% OFF",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kLikeWhiteColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: kLikeWhiteColor),
                        child: Center(
                            child: Text(
                          "View More",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: kTitleColor),
                        )),
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
                        ).onTap(() => const PharmacyCategoriesScreen().launch(context)),
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
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: colors[index]),
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
                        );
                      },
                    ).onTap(() => const HeartScreen().launch(context)),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearby Parmecy",
                          style: ktitleTextStyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: ksubTitleTextStyle,
                        ).onTap(() => const NearByPharmacyScreen().launch(context)),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    HorizontalList(
                      itemBuilder: (context, index) {
                        return SizedBox(
                          width: context.width() / 1.6,
                          child: Card(
                            elevation: 0,
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 128,
                                  width: context.width(),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/pharmacy_ladies.png"),
                                          fit: BoxFit.fill)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "HealthLance Pharmacy",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
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
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              ImageIcon(
                                                const AssetImage(
                                                    "assets/images/truck.png"),
                                                size: 20,
                                                color: kTruckColor,
                                              ),
                                              Text(" Free delivery",style: ksubTitleTextStyle,)
                                            ],
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
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: kTitleColor),
                                                      children: [
                                                    TextSpan(
                                                        text: "(70+) ",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                kSubTitleColor)),
                                                  ],),),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ).onTap(()=>const PharmacyDetailsScreen().launch(context));
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
