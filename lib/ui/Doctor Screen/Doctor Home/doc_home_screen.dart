import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Patients Prescription/patient_prescription.dart';

class DocHomeScreen extends StatefulWidget {
  const DocHomeScreen({Key? key}) : super(key: key);

  @override
  State<DocHomeScreen> createState() => _DocHomeScreenState();
}

class _DocHomeScreenState extends State<DocHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: kTitleColor),
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          horizontalTitleGap: 10,
          leading: const CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/images/patient1.png"),
          ),
          title: Text(
            'Dhaka, Medical',
            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            'Desgnation',
            style: TextStyle(color: kSubTitleColor),
          ),
          trailing: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: kTextFieldBorderColor),
              ),
              child: Icon(IconlyLight.notification, color: kTitleColor)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
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
                  Text(
                    'Today Appointments',
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: kTextFieldBorderColor.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 7.0,
                                  offset: const Offset(0, 0),
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 90.0,
                                      width: 90.0,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/images/patient2.png"), fit: BoxFit.cover),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Arlene McCoy',
                                            style: TextStyle(color: kTitleColor, fontSize: 18.0),
                                          ),
                                          SizedBox(
                                            width: 220,
                                            child: Text(
                                              'I am a fever patient. I need your help imidiately.',
                                              style: TextStyle(color: kSubTitleColor),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          Row(
                                            children: [
                                              const Icon(
                                                IconlyBold.calendar,
                                                color: Colors.orange,
                                                size: 18,
                                              ),
                                              Text(
                                                '12 May',
                                                style: TextStyle(color: kTitleColor),
                                              ),
                                              const SizedBox(width: 10.0),
                                              const Icon(
                                                IconlyBold.timeCircle,
                                                color: Colors.green,
                                                size: 18,
                                              ),
                                              Text(
                                                '11:00am - 11:30am',
                                                style: TextStyle(color: kTitleColor),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 40,
                                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          border: Border.all(color: Colors.red),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(color: Colors.red),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 40,
                                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                                        decoration: BoxDecoration(
                                          color: kMainColor,
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Accept',
                                            style: TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ).onTap(
                                        () => const PatientsPrescription().launch(context),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                  const SizedBox(height: 10.0),
                  Text(
                    'Tomorrow Appointments',
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (_, i) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Container(
                            padding: const EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: kTextFieldBorderColor.withOpacity(0.5),
                                  spreadRadius: 0.0,
                                  blurRadius: 7.0,
                                  offset: const Offset(0, 0),
                                )
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 90.0,
                                      width: 90.0,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(image: AssetImage("assets/images/patient2.png"), fit: BoxFit.cover),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Arlene McCoy',
                                            style: TextStyle(color: kTitleColor, fontSize: 18.0),
                                          ),
                                          SizedBox(
                                            width: 220,
                                            child: Text(
                                              'I am a fever patient. I need your help imidiately.',
                                              style: TextStyle(color: kSubTitleColor),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          const SizedBox(height: 8.0),
                                          Row(
                                            children: [
                                              const Icon(
                                                IconlyBold.calendar,
                                                color: Colors.orange,
                                                size: 18,
                                              ),
                                              Text(
                                                '12 May',
                                                style: TextStyle(color: kTitleColor),
                                              ),
                                              const SizedBox(width: 10.0),
                                              const Icon(
                                                IconlyBold.timeCircle,
                                                color: Colors.green,
                                                size: 18,
                                              ),
                                              Text(
                                                '11:00am - 11:30am',
                                                style: TextStyle(color: kTitleColor),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 10.0),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 40,
                                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6.0),
                                          border: Border.all(color: Colors.red),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(color: Colors.red),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        height: 40,
                                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0, bottom: 5.0),
                                        decoration: BoxDecoration(
                                          color: kMainColor,
                                          borderRadius: BorderRadius.circular(6.0),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Accept',
                                            style: TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
