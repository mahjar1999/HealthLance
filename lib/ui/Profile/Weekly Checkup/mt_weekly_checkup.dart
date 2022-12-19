import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/ui/Profile/Weekly%20Checkup/mt_weekly_checkup_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';

class WeeklyCheckupScreen extends StatefulWidget {
  const WeeklyCheckupScreen({Key? key}) : super(key: key);

  @override
  State<WeeklyCheckupScreen> createState() => _WeeklyCheckupScreenState();
}

class _WeeklyCheckupScreenState extends State<WeeklyCheckupScreen> {
  List syntomsImages = [
    "assets/images/cough.png",
    "assets/images/pain.png",
    "assets/images/fever.png",
    "assets/images/heart2.png",
    "assets/images/kidney.png",
    "assets/images/dental.png",
    "assets/images/lunges.png",
    "assets/images/liver.png",
    "assets/images/asthma.png",
  ];
  List syntomsName = ["Cough", "Pain", "Fever", "Heart", "Kidney", "Dental", "Lunges", "Liver", "Asthma"];
  List colors = [
    kMainColor.withOpacity(0.12),
    kBadgeColor.withOpacity(0.12),
    kWatchColor.withOpacity(0.12),
    kStarColor.withOpacity(0.12),
    kMainColor.withOpacity(0.12),
    kBadgeColor.withOpacity(0.12),
    kWatchColor.withOpacity(0.12),
    kStarColor.withOpacity(0.12),
    kMainColor.withOpacity(0.12),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Weekly Checkup",
          style: ktitleTextStyle,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Current Symptoms",
                        style: ktitleTextStyle,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      GridView.builder(
                          shrinkWrap: true,
                          itemCount: syntomsName.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 4,
                            crossAxisSpacing: 4,
                            crossAxisCount: 3,
                          ),
                          itemBuilder: (_, index) {
                            return Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: colors[index]),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Image.asset(
                                      syntomsImages[index],
                                      height: 24,
                                      width: 24,
                                    ),
                                  ),
                                ),
                                Text(
                                  syntomsName[index],
                                  style: TextStyle(fontSize: 16, color: kSubTitleColor),
                                )
                              ],
                            ).onTap(() => const WeeklyCheckupDetailsScreen().launch(context));
                          })
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
