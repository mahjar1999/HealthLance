import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Doctor%20Screen/Doctor%20Home/doctor_profile.dart';

import '../../Home/Doctor Appoinment/mt_message.dart';
import '../Patients Appointment list/patients_appointment_list.dart';
import 'doc_home_screen.dart';

class DocHomeNavBar extends StatefulWidget {
  const DocHomeNavBar({Key? key}) : super(key: key);

  @override
  State<DocHomeNavBar> createState() => _DocHomeNavBarState();
}

class _DocHomeNavBarState extends State<DocHomeNavBar> {
  var currentIndex = 0;

  List<Widget> pages = [const DocHomeScreen(), const PatientsAppointmentList(),const MessagingScreen(),const DoctorProfile()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: kMainColor,
          unselectedItemColor: kSubTitleColor,
          items: const [
        BottomNavigationBarItem(icon: Icon(IconlyBold.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(IconlyBold.user3),label: 'Patients'),
            BottomNavigationBarItem(icon: Icon(IconlyBold.message),label: 'Messages'),
        BottomNavigationBarItem(icon: Icon(IconlyBold.profile),label: 'Profile'),
      ]),
    );
  }
}
