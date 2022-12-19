import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_heart.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
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
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: kDarkWhite,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30.0),
              topLeft: Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    itemCount: texts.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 16, mainAxisSpacing: 16),
                    itemBuilder: (_, index) {
                      return Container(
                        height: context.height() / 7,
                        width: context.width() / 5,
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
                            Text(
                              texts[index],
                              style: TextStyle(color: kLikeWhiteColor),
                            ),
                          ],
                        ),
                      ).onTap(() => const HeartScreen().launch(context));
                    }),
              ),
            ],
          )
        ),
      ),
    );
  }
}
