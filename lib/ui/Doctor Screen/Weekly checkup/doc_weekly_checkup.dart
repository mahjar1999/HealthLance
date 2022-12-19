import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';
import '../Doctor Home/doc_home_nav.dart';

class DoctorWeeklyCheckUp extends StatefulWidget {
  const DoctorWeeklyCheckUp({Key? key}) : super(key: key);

  @override
  State<DoctorWeeklyCheckUp> createState() => _DoctorWeeklyCheckUpState();
}

class _DoctorWeeklyCheckUpState extends State<DoctorWeeklyCheckUp> {
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
  List<String> selectedSymptoms = [];
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
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
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
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(mainAxisSpacing: 4, crossAxisSpacing: 4, crossAxisCount: 3),
                      itemBuilder: (_, index) {
                        return Column(
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: colors[index]),
                                  child: Image.asset(
                                    syntomsImages[index],
                                    height: 24,
                                    width: 24,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(2.0),
                                  decoration: BoxDecoration(color: kMainColor,shape: BoxShape.circle),
                                  child: const Icon(Icons.check,color: Colors.white,size: 10.0,),
                                ).visible(selectedSymptoms.contains(syntomsName[index])),
                              ],
                            ),
                            Text(
                              syntomsName[index],
                              style: TextStyle(fontSize: 16, color: kSubTitleColor),
                            )
                          ],
                        ).onTap((){
                          setState(() {
                            selectedSymptoms.contains(syntomsName[index]) ? selectedSymptoms.remove(syntomsName[index]) : selectedSymptoms.add(syntomsName[index]);
                          });
                        });
                      }),
                  AppButton(
                    width: context.width(),
                    text: "Submit",
                    textColor: kLikeWhiteColor,
                    elevation: 0,
                    color: kMainColor,
                    onTap: () {
                      setState(
                            () {
                          const DocHomeNavBar().launch(context,isNewTask: true);
                        },
                      );
                    },
                    //  padding: EdgeInsets.zero,
                    shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
