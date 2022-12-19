import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_upload_prescription.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../../model/mt_doctor_model.dart';
import 'mt_medicine_details.dart';

class PharmacyDetailsScreen extends StatefulWidget {
  const PharmacyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyDetailsScreen> createState() => _PharmacyDetailsScreenState();
}

class _PharmacyDetailsScreenState extends State<PharmacyDetailsScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  late ScrollController scrollController;
  var index = 0;
  List reviewImages = [
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
    "assets/images/review_man.png",
    "assets/images/review_women.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(14.0),
          child: AppButton(
            text: "Upload Prescription",
            textColor: kLikeWhiteColor,
            elevation: 0,
            color: kMainColor,
            onTap: () => const UploadPrescriptionScreen().launch(context),
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 230,
                    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/pharmacy_ladies.png'), fit: BoxFit.fill)),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(shape: BoxShape.circle, color: kLikeWhiteColor, border: Border.all(color: kTextFieldBorderColor, width: 2)),
                            child: Icon(
                              IconlyBold.heart,
                              color: kBadgeColor,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kLikeWhiteColor, border: Border.all(color: kTextFieldBorderColor, width: 2)),
                          child: Badge(
                              badgeColor: kBadgeColor,
                              position: const BadgePosition(top: -9, end: -4),
                              padding: const EdgeInsets.all(3),
                              borderRadius: BorderRadius.circular(40),
                              badgeContent: Text(
                                "2",
                                style: TextStyle(color: kLikeWhiteColor),
                              ),
                              child: Icon(
                                FeatherIcons.shoppingCart,
                                color: kTitleColor,
                                size: 18,
                              )),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "HealthLance Pharmacy",
                          style: ktitleTextStyle.copyWith(fontSize: 20),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.star,
                          color: kStarColor,
                        ),
                        RichText(
                          text: TextSpan(
                            text: " 4.5 ",
                            style: TextStyle(color: kTitleColor),
                            children: [
                              TextSpan(
                                text: "(70+)",
                                style: TextStyle(color: kSubTitleColor),
                              )
                            ],
                          ),
                        ),
                      ],
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
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "2715 Ash Dr. San Jose, South Dakota 83475",
                          style: ksubTitleTextStyle,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          IconlyLight.timeCircle,
                          color: kWatchColor,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Delivery: 25 - 30 mins",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Text(
                          "Map Direction",
                          style: ksubTitleTextStyle,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kBadgeColor),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              FeatherIcons.navigation,
                              color: kLikeWhiteColor,
                              size: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                    TabBar(
                      tabs: const [
                        Tab(
                          text: "Medicine",
                        ),
                        Tab(
                          text: "About Us",
                        ),
                        Tab(
                          text: "Open and Closed",
                        ),
                        Tab(
                          text: "Rating",
                        ),
                      ],
                      isScrollable: true,
                      controller: _tabController,
                      labelColor: kBadgeColor,
                      unselectedLabelColor: kSubTitleColor,
                      indicatorColor: kBadgeColor,
                    ),
                    SizedBox(
                      height: 1000.0,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: AppTextField(
                                  textFieldType: TextFieldType.NAME,
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
                                height: 24,
                              ),
                              GridView.builder(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                itemCount: 6,
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.65,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 10.0,
                                ),
                                itemBuilder: (_, index) {
                                  return Card(
                                    elevation: 0,
                                    shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Stack(
                                          alignment: Alignment.topRight,
                                          children: [
                                            Container(
                                              height: 110,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                ),
                                                image: DecorationImage(image: AssetImage("assets/images/napa.png"), fit: BoxFit.fill),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                decoration: BoxDecoration(shape: BoxShape.circle, color: kCartColor),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(4.0),
                                                  child: Icon(
                                                    FeatherIcons.shoppingCart,
                                                    color: kWatchColor,
                                                    size: 14.0,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Napa Extend Taplet",
                                                style: TextStyle(fontWeight: FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              Text(
                                                "(Paracetamol)",
                                                style: TextStyle(color: kSubTitleColor),
                                              ),
                                              const SizedBox(
                                                height: 6,
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                  text: 'MRP',
                                                  style: TextStyle(color: kSubTitleColor),
                                                  children: [
                                                    TextSpan(
                                                      text: ' \$6.99 ',
                                                      style: TextStyle(color: kMainColor),
                                                    ),
                                                    TextSpan(
                                                      text: ' \$7.9 ',
                                                      style: TextStyle(color: kSubTitleColor, decoration: TextDecoration.lineThrough),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              AppButton(
                                                text: "Add to Cart",
                                                textColor: kLikeWhiteColor,
                                                width: double.infinity,
                                                padding: EdgeInsets.zero,
                                                enableScaleAnimation: false,
                                                elevation: 0,
                                                color: kMainColor,
                                                onTap: () {},
                                                //  padding: EdgeInsets.zero,
                                                shapeBorder: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(6),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ).onTap(
                                    () => const MedicineDetailsScreen().launch(context),
                                  );
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'About Us',
                                  style: ktitleTextStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                aboutUs,
                                style: ksubTitleTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Text(
                                  'Open - Closed',
                                  style: ktitleTextStyle,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Monday",
                                    style: ksubTitleTextStyle,
                                  ),
                                  Text(
                                    "10:00 AM - 10:00 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Tuesday",
                                    style: ksubTitleTextStyle,
                                  ),
                                  Text(
                                    "10:00 AM - 10:00 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Wednesday",
                                    style: ksubTitleTextStyle,
                                  ),
                                  Text(
                                    "10:00 AM - 10:00 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Thursday",
                                    style: ksubTitleTextStyle,
                                  ),
                                  Text(
                                    "10:00 AM - 10:00 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Friday",
                                    style: ksubTitleTextStyle,
                                  ),
                                  Text(
                                    "10:00 AM - 10:00 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Saturday",
                                    style: ksubTitleTextStyle,
                                  ),
                                  Text(
                                    "10:00 AM - 10:00 PM",
                                    style: TextStyle(color: kTitleColor),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Sunday",
                                    style: ksubTitleTextStyle.copyWith(color: kBadgeColor),
                                  ),
                                  Text(
                                    "Closed",
                                    style: TextStyle(color: kBadgeColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Review (${allDoctors[index].ratingCount})",
                                      style: ktitleTextStyle,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          IconlyBold.star,
                                          size: 12,
                                          color: kStarColor,
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          "${allDoctors[index].ratings}",
                                          style: ktitleTextStyle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 10,
                                  itemBuilder: (BuildContext context, int index) {
                                    return Card(
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 16.0),
                                        child: Column(
                                          children: [
                                            ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              minVerticalPadding: 0.0,
                                              leading: CircleAvatar(
                                                radius: 20,
                                                backgroundImage: AssetImage(reviewImages[index]),
                                              ),
                                              title: Text(
                                                "Jerome Bell",
                                                style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                                              ),
                                              subtitle: RatingBarWidget(
                                                size: 14,
                                                onRatingChanged: (value) {},
                                                itemCount: 5,
                                                rating: 4,
                                                activeColor: kStarColor,
                                                inActiveColor: kStarColor,
                                              ),
                                              trailing: Text(
                                                "31 Min Ago",
                                                style: TextStyle(color: kSubTitleColor),
                                              ),
                                            ),
                                            Text(
                                              reviewWomen,
                                              style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
