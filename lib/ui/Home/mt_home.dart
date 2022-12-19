import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Diagnostics/mt_diagnostics_book_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_book_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_doctor_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Home/Notifications/mt_notifications.dart';
import 'package:maan_doctor_appoinment/ui/Nursing%20Care/mt_nursing_care.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_pharmacy.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../model/mt_doctor_model.dart';
import '../Ambulance/mt_ambulance.dart';
import '../Cart/mt_cart.dart';
import '../Diagnostics/mt_diagnostics.dart';
import 'Doctor Appoinment/mt_popular_doctor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        titleSpacing: 0.0,
        title: ListTile(
          tileColor: Colors.white,
          leading: const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Image(
              image: AssetImage("assets/images/menmini.png"),
            ),
          ),
          title: Text(
            "Current Location",
            style: ksubTitleTextStyle.copyWith(fontSize: 12.0),
          ),
          subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                IconlyLight.location,
                color: kMainColor,
                size: 18,
              ),
              Text(
                "United States",
                style: TextStyle(fontWeight: FontWeight.w600, color: kMainColor),
              ),
              Icon(
                IconlyLight.arrowDown2,
                color: kMainColor,
                size: 20,
              ),
            ],
          ),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: kTextFieldBorderColor, width: 1)),
            child: Badge(
                badgeColor: kBadgeColor,
                borderRadius: BorderRadius.circular(40),
                badgeContent: Text(
                  "2",
                  style: TextStyle(color: kLikeWhiteColor),
                ),
                child: Icon(
                  IconlyLight.notification,
                  color: kTitleColor,
                )),
          ).onTap(() => const NotificationsScreen().launch(context)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
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
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kDarkWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Featured Services",
                    style: ktitleTextStyle.copyWith(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: const DecorationImage(image: AssetImage("assets/images/dr_appoinment.png"), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 17.0, left: 10),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Doctor Appointment",
                            style: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor, fontSize: 18.0),
                          ),
                          Text(
                            "Online consultancy of\npopular doctor",
                            style: TextStyle(color: kLikeWhiteColor.withOpacity(0.9)),
                          ),
                        ],
                      ),
                    ),
                  ).onTap(() => const DoctorAppoinmentScreen().launch(context)),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage("assets/images/diagnostics.png"), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Diagnostics",
                                style: ktitleTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ).onTap(() => const DiagnosticsScreen().launch(context)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                            image: const DecorationImage(image: AssetImage("assets/images/pharmacy.png"), fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Pharmacy",
                                style: ktitleTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ).onTap(() => const PharmacyScreen().launch(context)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage("assets/images/ambulance.png"), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Ambulance",
                                style: ktitleTextStyle.copyWith(fontSize: 18.0),
                              ),
                            ),
                          ),
                        ).onTap(() => const AmbulanceScreen().launch(context)),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Container(
                          height: 110,
                          decoration: BoxDecoration(
                              image: const DecorationImage(image: AssetImage("assets/images/nursing.png"), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10)),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Nursing\nCare",
                                style: ktitleTextStyle.copyWith(fontSize: 18.0),
                              ),
                            ),
                          ),
                        ).onTap(() => const NursingCareScreen().launch(context)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Popular Doctor",
                        style: ktitleTextStyle.copyWith(fontSize: 18.0),
                      ),
                      Text(
                        "View All",
                        style: ksubTitleTextStyle,
                      ).onTap(() => const PopularDoctorScreen().launch(context)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HorizontalList(
                    runSpacing: 0.0,
                    padding: EdgeInsets.zero,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 185,
                        width: context.width() / 1.3,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                              color: kSubTitleColor.withOpacity(0.10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  minLeadingWidth: 0,
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
                                            text: TextSpan(text: allDoctors[index].ratings ?? '', style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor), children: [
                                          const WidgetSpan(
                                              child: SizedBox(
                                            width: 5,
                                          )),
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
                                            text: TextSpan(text: allDoctors[index].experience ?? '', style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor), children: [
                                          const WidgetSpan(
                                              child: SizedBox(
                                            width: 6,
                                          )),
                                          TextSpan(text: "Year Exp ", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                        ]))
                                      ],
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                AppButton(
                                  text: "Book Now",
                                  textColor: kLikeWhiteColor,
                                  width: double.infinity,
                                  padding: EdgeInsets.zero,
                                  enableScaleAnimation: false,
                                  elevation: 0,
                                  color: kMainColor,
                                  onTap: () {
                                    const BookAppoinment().launch(context);
                                  },
                                  //  padding: EdgeInsets.zero,
                                  shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: allDoctors.length,
                    spacing: 0.0,
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Diagnostics",
                        style: ktitleTextStyle.copyWith(fontSize: 18),
                      ),
                      Text(
                        "View All",
                        style: ksubTitleTextStyle,
                      ).onTap(() => const DiagnosticsScreen().launch(context)),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  HorizontalList(
                    padding: EdgeInsets.zero,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: context.width() / 2.2,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(10)), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage("assets/images/covid.png"),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  "Covid RT PCR",
                                  style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                FittedBox(
                                  child: Text(
                                    "Known as Covid-19 Virus\nQuantitaticve Pcr",
                                    style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  "\$6.99",
                                  style: TextStyle(fontWeight: FontWeight.w400, color: kWatchColor),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                AppButton(
                                  text: "Book Now",
                                  textColor: kLikeWhiteColor,
                                  width: context.width(),
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                  enableScaleAnimation: false,
                                  color: kMainColor,
                                  onTap: () {
                                    const DiagnosticsBookAppoinment().launch(context);
                                  },
                                  shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Product List",
                        style: ktitleTextStyle,
                      ),
                      Text(
                        "View All",
                        style: ksubTitleTextStyle,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  HorizontalList(
                      padding: EdgeInsets.zero,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return SizedBox(
                          width: context.width() / 2.2,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(10)), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(alignment: Alignment.topLeft, children: [
                                  Container(
                                    height: context.height() / 6,
                                    decoration: BoxDecoration(
                                        image: const DecorationImage(image: AssetImage("assets/images/genzyme.png"), fit: BoxFit.fill), borderRadius: BorderRadius.circular(10)),
                                  ),
                                  Container(
                                    height: 28,
                                    width: 66,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(10),
                                        topLeft: Radius.circular(10),
                                      ),
                                      color: kWatchColor,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "20% Off",
                                      style: TextStyle(color: kLikeWhiteColor),
                                    ),
                                  )
                                ]),
                                const SizedBox(
                                  height: 4,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Relapsing Multiple\nSclerosis",
                                        style: TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 6,
                                      ),
                                      RichText(
                                          text: TextSpan(text: "\$6.99", style: TextStyle(color: kWatchColor), children: [
                                        const WidgetSpan(
                                            // alignment: PlaceholderAlignment.baseline,
                                            // baseline: TextBaseline.alphabetic,
                                            child: SizedBox(width: 10)),
                                        TextSpan(text: "\$6.99", style: TextStyle(color: kSubTitleColor, decoration: TextDecoration.lineThrough))
                                      ])),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      AppButton(
                                        text: "order Now",
                                        textColor: kLikeWhiteColor,
                                        enableScaleAnimation: false,
                                        width: context.width(),
                                        elevation: 0,
                                        padding: EdgeInsets.zero,
                                        color: kMainColor,
                                        onTap: () => const CartScreen().launch(context),
                                        shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
