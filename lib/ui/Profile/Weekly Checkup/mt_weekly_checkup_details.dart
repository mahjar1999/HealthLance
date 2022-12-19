import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_home.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Nursing Care/mt_nursing_care_details.dart';
import '../../Styles/style.dart';

class WeeklyCheckupDetailsScreen extends StatefulWidget {
  const WeeklyCheckupDetailsScreen({Key? key}) : super(key: key);

  @override
  State<WeeklyCheckupDetailsScreen> createState() =>
      _WeeklyCheckupDetailsScreenState();
}

class _WeeklyCheckupDetailsScreenState
    extends State<WeeklyCheckupDetailsScreen> {
  String selectedButton = '';

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
          "Weekly Checkup Details",
          style: ktitleTextStyle,
        ),
      ),
      body: Container(
        height: context.height(),
        width: double.infinity,
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
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              text: "Date: ",
                              style: TextStyle(color: kTitleColor),
                              children: [
                            TextSpan(
                                text: "21 Jun 2023 - 27 Jun 2023",
                                style: ksubTitleTextStyle)
                          ])),
                      Divider(
                        color: kSubTitleColor,
                      ),
                      Text(
                        "Symptoms: Fever",
                        style: TextStyle(
                            color: kTitleColor, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Chills and shivering, Headache, Irritability, Dehydration",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Do you need to make an appointment this week?",
                        style: TextStyle(color: kMainColor),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: AppButton(
                              elevation: 0,
                              enableScaleAnimation: false,
                              onTap: () {
                                setState(() {
                                  selectedButton = 'No';
                                });
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return Dialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12.0)), //this right here
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                    alignment:
                                                    AlignmentDirectional
                                                        .topEnd,
                                                    child: const Icon(Icons.close).onTap(()=>finish(context))),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(
                                                          20.0),
                                                  child: Image.asset(
                                                    "assets/images/congra.png",
                                                    width: 124,
                                                  ),
                                                ),
                                                Text(
                                                  "Congratulation!",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: kTitleColor,
                                                      fontSize: 28),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  " You don’t need to make an appoin-tment this week",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: kSubTitleColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                AppButton(
                                                  text: "Back to Home",
                                                  textColor: kLikeWhiteColor,
                                                  width: context.width(),
                                                  enableScaleAnimation: false,
                                                  padding: EdgeInsets.zero,
                                                  elevation: 0,
                                                  color: kMainColor,
                                                  onTap: () {
                                                    const HomeScreen()
                                                        .launch(context);
                                                  },
                                                  //  padding: EdgeInsets.zero,
                                                  shapeBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide
                                                              .none,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6)),
                                                ),
                                              ],
                                            ),
                                          ));
                                    });
                              },
                              shapeBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: kMainColor)),
                              color: selectedButton == 'No'
                                  ? kMainColor
                                  : kLikeWhiteColor,
                              text: "No",
                              textStyle: TextStyle(
                                  color: selectedButton == 'No'
                                      ? kLikeWhiteColor
                                      : kMainColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: AppButton(
                              elevation: 0,
                              enableScaleAnimation: false,
                              onTap: () {
                                setState(() {
                                  selectedButton = 'Yes';
                                });
                                showDialog(
                                    context: context,
                                    builder: (_) {
                                      return Dialog(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      12.0)), //this right here
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.all(20.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Align(
                                                    alignment:
                                                        AlignmentDirectional
                                                            .topEnd,
                                                    child: const Icon(Icons.close).onTap(()=>finish(context))),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(
                                                          20.0),
                                                  child: Image.asset(
                                                    "assets/images/hel-con.png",
                                                    width: 124,
                                                  ),
                                                ),
                                                Text(
                                                  "You Health Condition Is Not So Good",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: kTitleColor,
                                                      fontSize: 28),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                                Text(
                                                  "Would you like to book your appointment with Dr. Ibne Riead",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: kSubTitleColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                AppButton(
                                                  text: "Book Again",
                                                  textColor: kLikeWhiteColor,
                                                  width: context.width(),
                                                  enableScaleAnimation: false,
                                                  padding: EdgeInsets.zero,
                                                  elevation: 0,
                                                  color: kMainColor,
                                                  onTap: () {
                                                    const NursingCareDetailsScreen()
                                                        .launch(context);
                                                  },
                                                  //  padding: EdgeInsets.zero,
                                                  shapeBorder:
                                                      OutlineInputBorder(
                                                          borderSide: BorderSide
                                                              .none,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6)),
                                                ),
                                              ],
                                            ),
                                          ));
                                    });
                              },
                              shapeBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide(color: kMainColor)),
                              color: selectedButton == 'Yes'
                                  ? kMainColor
                                  : kLikeWhiteColor,
                              text: "Yes",
                              textStyle: TextStyle(
                                  color: selectedButton == 'Yes'
                                      ? kLikeWhiteColor
                                      : kMainColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
