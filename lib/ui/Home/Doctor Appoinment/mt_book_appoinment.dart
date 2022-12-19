import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_patients_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';

class BookAppoinment extends StatefulWidget {
  const BookAppoinment({Key? key}) : super(key: key);

  @override
  State<BookAppoinment> createState() => _BookAppoinmentState();
}

class _BookAppoinmentState extends State<BookAppoinment> {
  var index = 0;

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

  String isTime = '9.00 am';

  List<String> schedule = [
    'Morning',
    'Afternoon',
    'Evening',
  ];

  String isSelected = 'Morning';
  String selectedMethod = 'Online';
  String selectedConsultation = 'Physical';

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
            onTap: () => const PatientsDetailsScreen().launch(context),
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
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
                        onTap: (){
                          setState(() {
                            selectedMethod = 'Online';
                          });
                        },
                        shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: selectedMethod == 'Online' ? BorderSide.none : BorderSide(color: kMainColor)),
                        color: selectedMethod == 'Online' ? kMainColor : Colors.white,
                        text: "Online",
                        textStyle: TextStyle(color: selectedMethod == 'Online' ? kElevatedButtonTextColor : kMainColor, fontWeight: FontWeight.w700),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: AppButton(
                        elevation: 0,
                        enableScaleAnimation: false,
                        onTap: (){
                          setState(() {
                            selectedMethod = 'Offline';
                          });
                        },
                        color: selectedMethod == 'Offline' ? kMainColor : Colors.white,
                        shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: selectedMethod == 'Offline' ? BorderSide.none : BorderSide(color: kMainColor)),
                        text: "Offline",
                        textStyle: TextStyle(color: selectedMethod == 'Offline' ? kElevatedButtonTextColor : kMainColor, fontWeight: FontWeight.w700),
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
                        const Text(
                          "12 July, 2022",
                          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DatePicker(
                            DateTime.now(),
                            height: 100,
                            initialSelectedDate: DateTime.now(),
                            selectionColor: kMainColor,
                            selectedTextColor: Colors.white,
                            deactivatedColor: greenColor,
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
                          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.black),
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
                            },),
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
                          "Consultation Fees",
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(8.0),
                                color: selectedConsultation == 'Messaging' ? kMainColor:kLikeWhiteColor,
                              ),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedConsultation = 'Messaging';
                                  });
                                },
                                leading: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: selectedConsultation == 'Messaging' ? Colors.white : kPhoneContainerColor),
                                  child: ImageIcon(
                                    const AssetImage("assets/images/massege.png"),
                                    color: kMainColor,
                                  ),
                                ),
                                title: Text(
                                  "Messaging",
                                  style: TextStyle(color: selectedConsultation == 'Messaging' ? Colors.white :Colors.black, fontWeight: FontWeight.w600),
                                ),
                                trailing: Text(
                                  "\$5",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: selectedConsultation == 'Messaging' ? Colors.white : kMainColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(8.0),
                                color:selectedConsultation == 'Voice call'? kKedneyBgColor : kLikeWhiteColor,
                              ),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedConsultation = 'Voice call';
                                  });
                                },
                                leading: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: selectedConsultation == 'Voice call'? Colors.white:kMessageContainerColor),
                                  child: ImageIcon(
                                    const AssetImage("assets/images/phone.png"),
                                    color: kKedneyBgColor,
                                  ),
                                ),
                                title: Text(
                                  "Voice call",
                                  style: TextStyle(color: selectedConsultation == 'Voice call'? Colors.white:Colors.black, fontWeight: FontWeight.w600),
                                ),
                                trailing: Text(
                                  "\$10",
                                  style: TextStyle(fontWeight: FontWeight.bold, color: selectedConsultation == 'Voice call'? Colors.white: kKedneyBgColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(8.0),
                                color: selectedConsultation == 'Video Call'? kWatchColor : kLikeWhiteColor ,
                              ),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedConsultation = 'Video Call';
                                  });
                                },
                                leading: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: selectedConsultation == 'Video Call'? Colors.white:kVideoCallContainerColor),
                                  child: ImageIcon(
                                    const AssetImage("assets/images/video_call.png"),
                                    color: kWatchColor,
                                  ),
                                ),
                                title: Text(
                                  "Video Call",
                                  style: TextStyle(color: selectedConsultation == 'Video Call'? Colors.white:Colors.black, fontWeight: FontWeight.w600),
                                ),
                                trailing: Text(
                                  "\$15",
                                  style: TextStyle(fontWeight: FontWeight.bold, color:selectedConsultation == 'Video Call'? Colors.white: kWatchColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                                borderRadius: BorderRadius.circular(8.0),
                                color: selectedConsultation == 'Free Consult'? kWatchColor : kLikeWhiteColor ,
                              ),
                              child: ListTile(
                                onTap: () {
                                  setState(() {
                                    selectedConsultation = 'Free Consult';
                                  });
                                },
                                // leading: Container(
                                //   padding: const EdgeInsets.all(10),
                                //   decoration: BoxDecoration(shape: BoxShape.circle, color: selectedConsultation == 'Video Call'? Colors.white:kVideoCallContainerColor),
                                //   child: ImageIcon(
                                //     const AssetImage("assets/images/video_call.png"),
                                //     color: kWatchColor,
                                //   ),
                                // ),
                                leading: Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: selectedConsultation == 'Video Call'? Colors.white:kVideoCallContainerColor),
                                  child: Icon(
                                    Icons.person,
                                    color: kWatchColor,
                                  ),
                                ),
                                title: Text(
                                  "Free Consult",
                                  style: TextStyle(color: selectedConsultation == 'Free Consult'? Colors.white:Colors.black, fontWeight: FontWeight.w600),
                                ),
                                trailing: Text(
                                  "\$0",
                                  style: TextStyle(fontWeight: FontWeight.bold, color:selectedConsultation == 'Free Consult'? Colors.white: kWatchColor),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ).visible(selectedMethod == 'Online'),

                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: kSubTitleColor.withOpacity(0.10)),
                            borderRadius: BorderRadius.circular(8.0),
                            color: selectedConsultation == 'Video Call'? kWatchColor : kLikeWhiteColor ,
                          ),
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                selectedConsultation = 'Video Call';
                              });
                            },
                            leading: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: selectedConsultation == 'Video Call'? Colors.white:kVideoCallContainerColor),
                              child: Icon(
                                Icons.person,
                                color: kWatchColor,
                              ),
                            ),
                            title: Text(
                              "Family Doctor",
                              style: TextStyle(color: selectedConsultation == 'Video Call'? Colors.white:Colors.black, fontWeight: FontWeight.w600),
                            ),
                            trailing: Text(
                              "\$0",
                              style: TextStyle(fontWeight: FontWeight.bold, color:selectedConsultation == 'Video Call'? Colors.white: kWatchColor),
                            ),
                          ),
                        ).visible(selectedMethod != 'Online'),
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
