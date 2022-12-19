import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_patients_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../History/Appoinment History/mt_Offline_Appointments_Details.dart';
import '../../History/Appoinment History/mt_online_appoinment_details.dart';
import '../../Styles/style.dart';
import 'mt_message.dart';


class HospitalBookingScreen extends StatefulWidget {
  const HospitalBookingScreen({Key? key}) : super(key: key);

  @override
  State<HospitalBookingScreen> createState() => _HospitalBookingScreenState();
}

class _HospitalBookingScreenState extends State<HospitalBookingScreen> {
  var index = 0;
  var _checkboxListTile = false;
  var _checkboxListTilesecond = false;

  List times = [
    "9.00 am",
    "9.30 am",
    "10.00 am",
    "10.30 am",
    "11.00 am",
    "11.30 am",
    "12.00 am",
    "12.30 pm",
    "1.00 pm",
    "1.30 pm",
    "2.00 pm",
    "2.30 pm",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: kTitleColor,
          ),
          title: Text(
            "Hospital Booking",
            style: ktitleTextStyle,
          ),
        ),
        bottomNavigationBar:  Padding(
          padding: const EdgeInsets.all(14.0),
          child: AppButton(
            text: "Continue",
            textColor: kLikeWhiteColor,
            elevation: 0,
            color: kMainColor,
            onTap: () => const PatientsDetailsScreen().launch(context)
            ,
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(6)
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: AppButton(
                        elevation: 0,
                        enableScaleAnimation: false,
                        onTap: () =>const OnlineAppoinmentDetails().launch(context),
                        shapeBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide.none),
                        color: kMainColor,
                        text: "Online",
                        textStyle: TextStyle(
                            color: kElevatedButtonTextColor,
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
                        onTap: () => const OfflineAppoinmentDetails().launch(context),
                        shapeBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: BorderSide(color: kMainColor)),
                        text: "hospital",
                        textStyle: TextStyle(
                            color: kMainColor, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Select Hospital",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: kTitleColor),
                        ),
                        const SizedBox(height: 12,),
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          activeColor: kMainColor,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _checkboxListTile,
                          onChanged: (val) {
                            setState(() {
                              _checkboxListTile = val!;
                            });
                          },
                          title: const Text(
                              "National Institute of Cancer Research & Hospital."),
                        ),
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: _checkboxListTilesecond,
                          onChanged: (value) {
                            setState(() {
                              _checkboxListTilesecond = value!;
                            },);
                          },
                          title: const Text("Dhaka Medical College Hospital"),
                        ),
                        const SizedBox(height: 12,),
                        const Text(
                          "12 July, 2022",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        const SizedBox(height: 12,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DatePicker(
                            DateTime.now(),
                            height: 100,
                            initialSelectedDate: DateTime.now(),
                            selectionColor: kMainColor,
                            selectedTextColor: Colors.white,
                            onDateChange: (date) {
                              // New date selected
                              setState(() {
                              });
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Available Time",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(6.0),
                                color: kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.sunny,
                                    color: kSubTitleColor,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Morning",
                                    style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(6.0),
                                color: kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ImageIcon(
                                    const AssetImage(
                                        "assets/images/afternoonicon.png"),
                                    color: kSubTitleColor,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Afternoon",
                                    style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(6.0),
                                color: kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ImageIcon(
                                    const AssetImage("assets/images/eveningicon.png"),
                                    color: kSubTitleColor,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "Evening",
                                    style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GridView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: times.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 6,
                                    mainAxisSpacing: 6,
                                childAspectRatio: 2
                                ),
                            itemBuilder: (_, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: kSubTitleColor.withOpacity(0.10)),
                                  borderRadius: BorderRadius.circular(6.0),
                                  color: kLikeWhiteColor,
                                ),
                                child: Center(
                                  child: Text(
                                    times[index],
                                    style: TextStyle(
                                        color: kSubTitleColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              );
                            }),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Consultation Fees",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: kSubTitleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(8.0),
                            color: kLikeWhiteColor,
                          ),
                          child: ListTile(
                            onTap: () => const MessagingScreen().launch(context),
                            leading: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kWatchColor.withOpacity(0.15)),
                              child: Icon(IconlyBold.profile,color: kWatchColor,),
                            ),
                            title: Text(
                              "Physical ",
                              style: TextStyle(
                                  color: kTitleColor, fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              "\$20",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, color: kWatchColor),
                            ),
                          ),
                        ),
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
