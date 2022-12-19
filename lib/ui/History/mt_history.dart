import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/History/Nursing%20Care%20History/mt_upcoming_nursing_care_history.dart';
import 'package:maan_doctor_appoinment/ui/History/Prescription%20History/mt_my_prescription_history.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import 'Ambulance Book History/mt_upcoming_ambulance_history.dart';
import 'Appoinment History/mt_my_appoinment.dart';
import 'Diagnostic History/mt_diag_my_appoinment.dart';

class MyHistoryScreen extends StatelessWidget {
  const MyHistoryScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: kLikeWhiteColor,
          elevation: 0,
          title: Text(
            "My History",
            style: ktitleTextStyle,
          ),
          leading: BackButton(
            color: kTitleColor,
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                color: kbigContainerColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(color: kHeartBgColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/apoiment.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Appointment History",
                          style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            )),
                      ],
                    ),
                  ).onTap(
                    () => const MyAppoinmentScreen().launch(context),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(color: kKedneyBgColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/diag-history.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Diagnostic History",
                          style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          )
                        ),
                      ],
                    ),
                  ).onTap(() => const DiagnosticsMyAppoinmentScreen().launch(context)),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(color: kDaigLungsBGColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/prescription-history.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Prescription History",
                          style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          )
                        ),
                      ],
                    ),
                  ).onTap(() => const MyPrescriptionHistoryScreen().launch(context)),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(color: kLungsBgColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/nursing-his.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Nursing Care History",
                          style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          )
                        ),
                      ],
                    ),
                  ).onTap(() => const UpcomingNursingCareHistoryScreen().launch(context)),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(color: kLikeWhiteColor, borderRadius: BorderRadius.circular(6)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 64,
                          height: 64,
                          decoration: BoxDecoration(color: k15DaysBGColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(6), bottomLeft: Radius.circular(6))),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset(
                              "assets/images/ambulance-history.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          "Ambulance History",
                          style: TextStyle(fontWeight: FontWeight.w500, color: kTitleColor),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          )
                        ),
                      ],
                    ),
                  ).onTap(() => const UpcomingAmbulanceHistoryScreen().launch(context)),
                ],
              ),
            )));
  }
}
