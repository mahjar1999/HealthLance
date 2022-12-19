import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_book_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_heart.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_hospital_book_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_near_by_hospital.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_popular_doctor.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../model/mt_doctor_model.dart';
import '../Notifications/mt_notifications.dart';
import 'mt_categories.dart';
import 'mt_doctor_details.dart';

class DoctorAppoinmentScreen extends StatefulWidget {
  const DoctorAppoinmentScreen({Key? key}) : super(key: key);

  @override
  State<DoctorAppoinmentScreen> createState() => _DoctorAppoinmentScreenState();
}

class _DoctorAppoinmentScreenState extends State<DoctorAppoinmentScreen> {
  List texts = [
    "Heart",
    "Kidney",
    "Dental",
    "Lungs",
    "Heart",
    "Kidney",
    "Dental",
    "Lungs",
    "Heart",
    "Kidney",
    "Dental",
    "Lungs",
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
    "assets/icons/kidneys-svgrepo-com 1.png",
    "assets/icons/kidneys.png",
    "assets/icons/dental.png",
    "assets/icons/lunges.png",
    "assets/icons/kidneys-svgrepo-com 1.png",
    "assets/icons/kidneys.png",
    "assets/icons/dental.png",
    "assets/icons/lunges.png",
    "assets/icons/kidneys-svgrepo-com 1.png",
    "assets/icons/kidneys.png",
    "assets/icons/dental.png",
    "assets/icons/lunges.png",
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
          "Doctor Appointment",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kTextFieldBorderColor, width: 1)),
              child: Badge(
                badgeColor: kBadgeColor,
                position: const BadgePosition(top: -8, end: -5),
                borderRadius: BorderRadius.circular(40),
                badgeContent: Text(
                  "2",
                  style: TextStyle(color: kLikeWhiteColor),
                ),
                child: Icon(
                  IconlyLight.notification,
                  color: kTitleColor,
                ),
              ),
            ).onTap(
              () => const NotificationsScreen().launch(context),
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
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      IconlyLight.search,
                      color: kTitleColor,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: kSubTitleColor),
                    filled: true,
                    fillColor: kTextFieldColor),
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
                      height: 15,
                    ),
                    HorizontalList(
                      itemCount: 4,
                      spacing: 15,
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: context.width() / 1.3,
                          height: context.height() / 5.8,
                          decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage("assets/images/femaledoc.png"), fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Say Hello Doctor",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor, fontSize: 18.0),
                                ),
                                Text(
                                  "30% OFF",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kLikeWhiteColor),
                                  child: Center(
                                      child: Text(
                                    "See Doctor",
                                    style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                                  )),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 24,
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
                        ).onTap(() => const CategoriesScreen().launch(context)),
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
                          height: context.height() / 7.5,
                          width: context.width() / 4.4,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: colors[index]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ImageIcon(
                                AssetImage(
                                  icons[index],
                                ),
                                color: kLikeWhiteColor,
                                size: 40,
                              ),
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
                          "Popular Doctor",
                          style: ktitleTextStyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: ksubTitleTextStyle,
                        ).onTap(() => const PopularDoctorScreen().launch(context)),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    HorizontalList(
                      padding: EdgeInsets.zero,
                      runSpacing: 0.0,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: context.width() / 1.3,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    minLeadingWidth: 0,
                                    isThreeLine: true,
                                    minVerticalPadding: 0,
                                    leading: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kWatchColor.withOpacity(0.10), width: 2)),
                                      child: Badge(
                                          badgeColor: kWatchColor,
                                          position: BadgePosition.topEnd(top: -2, end: 4),
                                          borderRadius: BorderRadius.circular(40),
                                          badgeContent: Container(
                                            padding: EdgeInsets.zero,
                                            decoration: const BoxDecoration(shape: BoxShape.circle),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: CircleAvatar(
                                              radius: 40,
                                              backgroundImage: AssetImage(allDoctors[index].image ?? ''),
                                            ),
                                          )),
                                    ),
                                    title: Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(
                                        allDoctors[index].doctorName ?? '',
                                        style: const TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    subtitle: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          allDoctors[index].speciality ?? '',
                                          style: TextStyle(fontWeight: FontWeight.w400, color: kMainColor),
                                        ),
                                        Text(
                                          allDoctors[index].hospital ?? '',
                                          style: const TextStyle(fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            IconlyBold.star,
                                            color: kStarColor,
                                            size: 12,
                                          ),
                                          RichText(
                                              text: TextSpan(
                                                  text: allDoctors[index].ratings ?? '',
                                                  style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                                                  children: [
                                                const WidgetSpan(
                                                  child: SizedBox(
                                                    width: 5,
                                                  ),
                                                ),
                                                TextSpan(text: "(100+ Ratings)", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                              ]))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            IconlyBold.timeCircle,
                                            color: kWatchColor,
                                            size: 14,
                                          ),
                                          const SizedBox(
                                            width: 4,
                                          ),
                                          RichText(
                                              text: TextSpan(
                                                  text: allDoctors[index].experience ?? '',
                                                  style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                                                  children: [
                                                const WidgetSpan(
                                                  child: SizedBox(
                                                    width: 6,
                                                  ),
                                                ),
                                                TextSpan(text: "Year Exp ", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                              ]))
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  AppButton(
                                    text: "Book Now",
                                    textColor: kLikeWhiteColor,
                                    width: context.width(),
                                    padding: EdgeInsets.zero,
                                    enableScaleAnimation: false,
                                    elevation: 0,
                                    color: kMainColor,
                                    onTap: () {
                                      const BookAppoinment().launch(context);
                                    },
                                    //  padding: EdgeInsets.zero,
                                    shapeBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ).onTap(
                            () => const DoctorDetailsScreen().launch(context),
                          ),
                        );
                      },
                      itemCount: allDoctors.length,
                      spacing: 0.0,
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nearby Hospital",
                          style: ktitleTextStyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          "View All",
                          style: ksubTitleTextStyle,
                        ).onTap(() => const NearByHospitalScreen().launch(context)),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    HorizontalList(
                      padding: EdgeInsets.zero,
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: context.width() / 1.6,
                          child: Card(
                            elevation: 0,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 115,
                                  width: context.width(),
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                      image: DecorationImage(image: AssetImage("assets/images/hospital.png"), fit: BoxFit.fill)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        " Christ Hospital",
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
                                          Text(
                                            "Dhaka Medical, bangladesh",
                                            style: ksubTitleTextStyle,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                IconlyBold.star,
                                                color: kStarColor,
                                                size: 12,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: " 4.5 ",
                                                  style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor),
                                                  children: [
                                                    TextSpan(text: "(100+ Ratings) ", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      AppButton(
                                          color: kMainColor,
                                          elevation: 0,
                                          enableScaleAnimation: false,
                                          padding: EdgeInsets.zero,
                                          width: context.width() / 1.9,
                                          onTap: () {
                                            const HospitalBookingScreen().launch(context);
                                          },
                                          shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
                                          text: "Book Now",
                                          textStyle: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
                      spacing: 15,
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
