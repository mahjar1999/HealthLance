import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import 'mt_full_day_pack.dart';

class NursingCareScreen extends StatelessWidget {
  const NursingCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLikeWhiteColor,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Nursing Care",
          style: ktitleTextStyle,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: kbigContainerColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: context.height() / 4.6,
                decoration: BoxDecoration(
                    image: const DecorationImage(image: AssetImage("assets/images/nursing_care_banner.png"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About Nussing Care",
                        style: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor, fontSize: 18.0),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          "Lorem ipsum dolor sit amet is consectetur adipiscin...",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: kLikeWhiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        height: 30,
                        width: 90,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kLikeWhiteColor),
                        child: Center(
                            child: Text(
                          "Read More",
                          style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 73,
                      decoration: BoxDecoration(
                          color: kGAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: kSubTitleColor.withOpacity(0.1)),
                          image: const DecorationImage(image: AssetImage("assets/images/nursing1.png"), fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Full Day Packs",
                      style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ),
                    )
                  ],
                ),
              ).onTap(() => const FullDayPackScreen(
                    name: "Full Day Packs",
                    imageUrl: "assets/images/nursing1.png",
                  ).launch(context)),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6.0)),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: 73,
                      decoration: BoxDecoration(
                          color: kGAmbulanceBGColor,
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: kSubTitleColor.withOpacity(0.1)),
                          image: const DecorationImage(image: AssetImage("assets/images/nursing2.png"), fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Half Day Packs",
                      style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      ),
                    )
                  ],
                ),
              ).onTap(
                () => const FullDayPackScreen(
                  name: "Full Day Packs",
                  imageUrl: "assets/images/nursing1.png",
                ).launch(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
