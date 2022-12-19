import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Weekly checkup/doc_weekly_checkup.dart';

class PatientsPrescription extends StatefulWidget {
  const PatientsPrescription({Key? key}) : super(key: key);

  @override
  State<PatientsPrescription> createState() => _PatientsPrescriptionState();
}

class _PatientsPrescriptionState extends State<PatientsPrescription> {
  List<String> timeList = [
    'Before eating',
    'After eating',
  ];

  String isSelected = 'Before eating';

  List day = [
    "Sat",
    "Sun",
    "Mon",
    "Tue",
    "Wed",
    "Thu",
    "Fri",
    "ALl",
  ];

  String isDay = 'Mon';

  List<String> mealTime = [
    'Breakfast',
    'Lunch',
    'Afternoon',
    'Dinner',
  ];
  List<String> isMealTime = ['Breakfast'];

  List<String> duration = [
    'Days',
    'Month',
    'Year',
    'Untill Death',
  ];

  String selectedDuration = 'Days';

  DropdownButton<String> getDuration() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in duration) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: selectedDuration,
      style: TextStyle(color: kSubTitleColor),
      onChanged: (value) {
        setState(() {
          selectedDuration = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Patient Prescription',
          style: TextStyle(color: kTitleColor),
        ),
        iconTheme: IconThemeData(
          color: kTitleColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.zero,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none),
                    prefixIcon: Icon(
                      IconlyLight.search,
                      color: kTitleColor,
                    ),
                    hintText: "Search...",
                    hintStyle: TextStyle(color: kSubTitleColor),
                    filled: true,
                    fillColor: kTextFieldColor),
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: kDarkWhite,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Available Time',
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 18.0),
                      ),
                      const Spacer(),
                      Icon(MdiIcons.pill, color: kMainColor),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Paracetamol + Caffeine  | 300 mg',
                    style: TextStyle(color: kTitleColor),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    'Consumption Rules:',
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
                  const SizedBox(height: 10.0),
                  HorizontalList(
                      itemCount: 2,
                      itemBuilder: (_, i) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected = timeList[i];
                            });
                          },
                          child: Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.3,
                              height: 40,
                              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                              decoration: BoxDecoration(
                                color: isSelected == timeList[i] ? kMainColor : Colors.red.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              child: Center(
                                child: Text(
                                  timeList[i],
                                  style: TextStyle(color: isSelected == timeList[i] ? Colors.white : Colors.red),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                  const SizedBox(height: 10.0),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: day.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, crossAxisSpacing: 6, mainAxisSpacing: 6, childAspectRatio: 2),
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isDay = day[index];
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(6.0),
                            color: isDay == day[index] ? kMainColor : kLikeWhiteColor,
                          ),
                          child: Center(
                            child: Text(
                              day[index],
                              style: TextStyle(color: isDay == day[index] ? kLikeWhiteColor : kSubTitleColor, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 20.0),
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: mealTime.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 4,
                    ),
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isMealTime.contains(mealTime[index]) ? isMealTime.remove(mealTime[index]) : isMealTime.add(mealTime[index]);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(6.0),
                            color: isMealTime.contains(mealTime[index]) ? kMainColor : kLikeWhiteColor,
                          ),
                          child: Center(
                            child: Text(
                              mealTime[index],
                              style: TextStyle(color: isMealTime.contains(mealTime[index]) ? kLikeWhiteColor : kSubTitleColor, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 40.0),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 60,
                          child: AppTextField(
                            showCursor: false,
                            textFieldType: TextFieldType.NAME,
                            decoration: InputDecoration(
                              hintText: '7',
                              hintStyle: TextStyle(color: kTitleColor),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: SizedBox(
                          height: 60,
                          child: FormField(
                            builder: (FormFieldState<dynamic> field) {
                              return InputDecorator(
                                  decoration: InputDecoration(
                                    labelStyle: TextStyle(color: kTitleColor),
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                                    ),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: getDuration(),
                                  ));
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  AppButton(
                    width: context.width(),
                    text: "Add to The Prescription",
                    textColor: kLikeWhiteColor,
                    elevation: 0,
                    color: kMainColor,
                    onTap: () {
                      setState(
                        () {
                          const DoctorWeeklyCheckUp().launch(context);
                        },
                      );
                    },
                    //  padding: EdgeInsets.zero,
                    shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
