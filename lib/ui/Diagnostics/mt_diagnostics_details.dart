import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Diagnostics/mt_diagnostics_book_appoinment.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../../model/mt_doctor_model.dart';
import '../Pharmacy/mt_medicine_details.dart';

class DiagnosticsDetailsScreen extends StatefulWidget {
  const DiagnosticsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<DiagnosticsDetailsScreen> createState() =>
      _DiagnosticsDetailsScreenState();
}

class _DiagnosticsDetailsScreenState extends State<DiagnosticsDetailsScreen>
    with TickerProviderStateMixin {
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
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: BackButton(
              color: kTitleColor,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kLikeWhiteColor,
                        border:
                            Border.all(color: kTextFieldBorderColor, width: 2)),
                    child: Icon(
                      IconlyBold.heart,
                      color: kBadgeColor,
                    )),
              ),
            ]),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 290,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/diagnostics_lab.png'),
                        fit: BoxFit.fill)),
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
                        Row(
                          children: [
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
                                ])),
                          ],
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Map Direction",
                              style: ksubTitleTextStyle,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: kBadgeColor),
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
                      height: 900,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              AppTextField(
                                textFieldType: TextFieldType.NAME,
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.zero,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        borderSide: BorderSide.none),
                                    prefixIcon: Icon(
                                      IconlyLight.search,
                                      color: kTitleColor,
                                    ),
                                    hintText: "Search...",
                                    hintStyle: TextStyle(color: kSubTitleColor),
                                    filled: true,
                                    fillColor: kTextFieldColor),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Expanded(
                                child: GridView.builder(
                                  itemCount: 6,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 0.65,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Card(
                                      margin: EdgeInsets.zero,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 6.0,right:6,top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                color: kMainColor,
                                                  shape: BoxShape.circle),
                                              child:Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Image.asset("assets/images/covid_diag.png",width: 50,),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "Covid RT PCR",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                    "Known as Covid-19 Virus Quantitaticve Pcr ",
                                                    style: TextStyle(
                                                        color: kSubTitleColor),
                                                  ),
                                                  const SizedBox(
                                                    height: 6,
                                                  ),
                                                  Text(
                                                     '\$6.99',
                                                    style: TextStyle(
                                                        color: kWatchColor),
                                                  ), const SizedBox(
                                                    height: 6,
                                                  ),
                                                  AppButton(
                                                    text: "Book Now",
                                                    textColor: kLikeWhiteColor,
                                                    width: double.infinity,
                                                    padding: EdgeInsets.zero,
                                                    enableScaleAnimation: false,
                                                    elevation: 0,
                                                    color: kMainColor,
                                                    onTap: () =>
                                                        const DiagnosticsBookAppoinment()
                                                            .launch(context),
                                                    //  padding: EdgeInsets.zero,
                                                    shapeBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide.none,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(6)),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ).onTap(() => const MedicineDetailsScreen()
                                            .launch(context)),
                                      ),
                                    );
                                  },
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'About Us',
                                  style: ktitleTextStyle,
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
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Open - Closed',
                                  style: ktitleTextStyle,
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: ksubTitleTextStyle.copyWith(
                                          color: kBadgeColor),
                                    ),
                                    Text(
                                      "Closed",
                                      style: TextStyle(color: kBadgeColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                const SizedBox(
                                  height: 12,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    physics: const NeverScrollableScrollPhysics(),
                                    itemCount: 8,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: Card(
                                          elevation: 0,
                                          margin: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              side: BorderSide(
                                                  color: kSubTitleColor
                                                      .withOpacity(0.10))),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0,
                                                right: 8.0,
                                                bottom: 16.0),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  contentPadding: EdgeInsets.zero,
                                                  minVerticalPadding: 0.0,
                                                  leading: CircleAvatar(
                                                    radius: 20,
                                                    backgroundImage: AssetImage(
                                                        reviewImages[index]),
                                                  ),
                                                  title: Text(
                                                    "Jerome Bell",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: kTitleColor),
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
                                                    style: TextStyle(
                                                        color: kSubTitleColor),
                                                  ),
                                                ),
                                                Text(
                                                  reviewWomen,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      color: kSubTitleColor),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
