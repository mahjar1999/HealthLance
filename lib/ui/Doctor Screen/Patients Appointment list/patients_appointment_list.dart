import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../../model/mt_doctor_model.dart';
import '../../Styles/style.dart';
import '../Apoinment history/online_appointment_details.dart';

class PatientsAppointmentList extends StatefulWidget {
  const PatientsAppointmentList({Key? key}) : super(key: key);

  @override
  State<PatientsAppointmentList> createState() => _PatientsAppointmentListState();
}

class _PatientsAppointmentListState extends State<PatientsAppointmentList> {
  List icons = ["assets/images/video2.png", "assets/images/phone.png", "assets/images/massege.png"];
  List calls = ["Video call-", "Voice call-", "Message-"];
  List conditions = ["Accepted", 'In Progress', "Cancel"];
  List colors = [kWatchColor, kStarColor, kBadgeColor];

  List<String> titleList = [
    'Upcoming',
    'Past',
  ];
  String isSelected = 'Upcoming';

  bool isSelect = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Appointment History",
          style: ktitleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HorizontalList(
                    padding: EdgeInsets.zero,
                    itemCount: titleList.length,
                    itemBuilder: (_, i) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = titleList[i];
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(color: isSelected == titleList[i] ? Colors.transparent : kMainColor),
                                color: isSelected == titleList[i] ? kMainColor : Colors.white,
                              ),
                              padding: const EdgeInsets.all(10.0),
                              width: 150,
                              child: Text(
                                titleList[i],
                                style: TextStyle(color: isSelected == titleList[i] ? Colors.white : kMainColor, fontWeight: FontWeight.w700),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today - 12 July 2022",
                      style: TextStyle(fontWeight: FontWeight.w600, color: kSubTitleColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: calls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: Card(
                              elevation: 0,
                              margin: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Container(
                                    padding: const EdgeInsets.all(46),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8), image: const DecorationImage(image: AssetImage('assets/images/patient2.png'), fit: BoxFit.fill)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Arlene McCoy',
                                        style: TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        allDoctors[index].speciality ?? '',
                                        style: TextStyle(fontWeight: FontWeight.w400, color: kMainColor),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "25 May 22 - 10:00 AM",
                                        style: ksubTitleTextStyle,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Row(children: [
                                        Container(
                                            padding: const EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(color: kMainColor.withOpacity(0.1), shape: BoxShape.circle),
                                            child: ImageIcon(
                                              AssetImage(icons[index]),
                                              color: kMainColor,
                                              size: 10,
                                            )),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        RichText(
                                            text: TextSpan(text: calls[index], style: TextStyle(color: kTitleColor), children: [
                                          const WidgetSpan(
                                              child: SizedBox(
                                            width: 6,
                                          )),
                                          TextSpan(
                                            text: conditions[index],
                                            style: TextStyle(color: colors[index]),
                                          )
                                        ])),
                                      ]),
                                    ],
                                  ),
                                ]),
                              )).onTap(
                            () => const DocOnlineAppointmentDetails().launch(context),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      "Yesterday - 11 July 2022",
                      style: TextStyle(fontWeight: FontWeight.w600, color: kSubTitleColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: calls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Card(
                            elevation: 0,
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(46),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8), image: const DecorationImage(image: AssetImage('assets/images/patient2.png'), fit: BoxFit.fill)),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        allDoctors[index].doctorName ?? '',
                                        style: const TextStyle(fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        allDoctors[index].speciality ?? '',
                                        style: TextStyle(fontWeight: FontWeight.w400, color: kMainColor),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        "25 May 22 - 10:00 AM",
                                        style: ksubTitleTextStyle,
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Row(children: [
                                        Container(
                                            padding: const EdgeInsets.all(6.0),
                                            decoration: BoxDecoration(color: kMainColor.withOpacity(0.1), shape: BoxShape.circle),
                                            child: ImageIcon(
                                              AssetImage(icons[index]),
                                              color: kMainColor,
                                              size: 10,
                                            )),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        RichText(
                                            text: TextSpan(text: calls[index], style: TextStyle(color: kTitleColor), children: [
                                          const WidgetSpan(
                                              child: SizedBox(
                                            width: 6,
                                          )),
                                          TextSpan(
                                            text: conditions[index],
                                            style: TextStyle(color: colors[index]),
                                          )
                                        ])),
                                      ]),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
