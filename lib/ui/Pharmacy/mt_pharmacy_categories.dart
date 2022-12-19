import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../Styles/style.dart';
import 'mt_near_by_pharmacy.dart';


class PharmacyCategoriesScreen extends StatefulWidget {
  const PharmacyCategoriesScreen({Key? key}) : super(key: key);

  @override
  State<PharmacyCategoriesScreen> createState() => _PharmacyCategoriesScreenState();
}

class _PharmacyCategoriesScreenState extends State<PharmacyCategoriesScreen> {
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        elevation: 0,
        title: Text(
          "Categories",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                  itemCount: texts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  itemBuilder: (_, index) {
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
                          Text(
                            texts[index],
                            style: TextStyle(color: kLikeWhiteColor),
                          ),
                        ],
                      ),
                    ).onTap(() => const NearByPharmacyScreen().launch(context));
                  }),
            )
          ],
        ),
      ),
    );
  }
}
