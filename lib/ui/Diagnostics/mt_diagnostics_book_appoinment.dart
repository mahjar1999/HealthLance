import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../Styles/style.dart';
import 'mt_diag_patients_details.dart';

class DiagnosticsBookAppoinment extends StatefulWidget {
  const DiagnosticsBookAppoinment({Key? key}) : super(key: key);

  @override
  State<DiagnosticsBookAppoinment> createState() =>
      _DiagnosticsBookAppoinmentState();
}

class _DiagnosticsBookAppoinmentState extends State<DiagnosticsBookAppoinment> {
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
  List<String> doctorProfile = [
    "assets/images/doctorpro.png",
    "assets/images/dr_allenda.png",
    "assets/images/dr_blish.png",
    "assets/images/dr_joshia.png",
    "assets/images/doctorpro.png",
    "assets/images/dr_allenda.png",
    "assets/images/dr_blish.png",
    "assets/images/dr_joshia.png",
  ];
  List<String> doctorName = [
    "Dr. Josiah Toor",
    "Dr. Iker Holl",
    "Dr. Stephen",
    "Dr. Quinn Slad",
    "Dr. Josiah Toor",
    "Dr. Iker Holl",
    "Dr. Stephen",
    "Dr. Quinn Slad",
  ];

  String isTime = '9.00 am';

  List<String> schedule = [
    'Morning',
    'Afternoon',
    'Evening',
  ];

  String isSelected = 'Morning';

  List<IconData> iconList = [
    Icons.sunny,
    FontAwesomeIcons.cloudSun,
    FontAwesomeIcons.cloudMoon,
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
            "Book Appointment",
            style: ktitleTextStyle,
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(14.0),
          child: AppButton(
            text: "Continue",
            textColor: kLikeWhiteColor,
            elevation: 0,
            color: kMainColor,
            onTap: () => const DiagnosticsPatientsDetailsScreen().launch(context),
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(6)),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
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
                    const Text(
                      "Specialist Doctor",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    HorizontalList(
                        itemCount: doctorName.length,
                        spacing: 10,
                        itemBuilder: (_, index) {
                          return Column(
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage(doctorProfile[index]),
                                radius: 35,
                              ),
                              Text(
                                doctorName[index],
                                style: ksubTitleTextStyle,
                              )
                            ],
                          );
                        }),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "12 July, 2022",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    DatePicker(
                      DateTime.now(),
                      height: 100,
                      width: 80,
                      initialSelectedDate: DateTime.now(),
                      selectionColor: kMainColor,
                      selectedTextColor: Colors.white,
                      onDateChange: (date) {
                        // New date selected
                        setState(() {
                        });
                      },
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
                    HorizontalList(
                        spacing: 10.0,
                        itemCount: 3,
                        padding: EdgeInsets.zero,
                        itemBuilder: (_, i) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = schedule[i];
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kSubTitleColor.withOpacity(0.10),
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                                color: isSelected == schedule[i] ? kMainColor : kLikeWhiteColor,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(iconList[i], color: isSelected == schedule[i] ? kLikeWhiteColor : kSubTitleColor),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    schedule[i],
                                    style: TextStyle(color: isSelected == schedule[i] ? kLikeWhiteColor : kSubTitleColor, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: times.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 6, mainAxisSpacing: 6, childAspectRatio: 2),
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isTime = times[index];
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                              borderRadius: BorderRadius.circular(6.0),
                              color: isTime == times[index] ? kMainColor : kLikeWhiteColor,
                            ),
                            child: Center(
                              child: Text(
                                times[index],
                                style: TextStyle(color: isTime == times[index] ? kLikeWhiteColor : kSubTitleColor, fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Check-up Fees",
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
                        leading: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: kWatchColor.withOpacity(0.15)),
                          child: ImageIcon(
                            const AssetImage("assets/images/covid_diag.png"),
                            color: kWatchColor,
                          ),
                        ),
                        title: Text(
                          "Covid RT PCR",
                          style: TextStyle(
                              color: kWatchColor, fontWeight: FontWeight.w600),
                        ),
                        trailing: Text(
                          "\$20",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: kWatchColor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Text(
                      "Your Preferred Service",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
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
                          "Through Hospital (Physically I will come and give my test sample)"),
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      controlAffinity: ListTileControlAffinity.leading,
                      value: _checkboxListTilesecond,
                      onChanged: (value) {
                        setState(() {
                          _checkboxListTilesecond = value!;
                        });
                      },
                      title: const Text("Home Service (Collect my test sample)"),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
