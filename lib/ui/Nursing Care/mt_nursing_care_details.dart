import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Home/Doctor Appoinment/mt_write_review.dart';
import '../Styles/style.dart';

class NursingCareDetailsScreen extends StatelessWidget {
  const NursingCareDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Nursing Care Details",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: AppButton(
                elevation: 0,
                enableScaleAnimation: false,
                onTap: () {},
                shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide(color: kBadgeColor)),
                text: "Cancel",
                textStyle: TextStyle(color: kBadgeColor, fontWeight: FontWeight.w700),
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
                  const WriteReviewScreen().launch(context);
                },
                shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(6), borderSide: BorderSide.none),
                color: kMainColor,
                text: "Reschedule",
                textStyle: TextStyle(color: kElevatedButtonTextColor, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: context.height(),
        child: Container(
          decoration: BoxDecoration(
            color: kbigContainerColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Your Service",
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: kMainColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "Package Type",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(":", style: TextStyle(color: kSubTitleColor)),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Home Care",
                        style: TextStyle(color: kTitleColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        "Package Name",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        width: 23,
                      ),
                      Text(":", style: TextStyle(color: kSubTitleColor)),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        "1 Day Pack",
                        style: TextStyle(color: kTitleColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      Text(
                        "Order Details",
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.check_circle,
                        color: kMainColor,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text(
                        "Patient Name",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(":", style: TextStyle(color: kSubTitleColor)),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Ibne Riead",
                        style: TextStyle(color: kTitleColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      Text(":", style: TextStyle(color: kSubTitleColor)),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        "26 Jun2022 - 26 Jun 2022",
                        style: TextStyle(color: kTitleColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Text(
                        "Total Day",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        width: 55,
                      ),
                      Text(":", style: TextStyle(color: kSubTitleColor)),
                      const SizedBox(
                        width: 30,
                      ),
                      Text(
                        "1 Day",
                        style: TextStyle(color: kTitleColor),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      const SizedBox(
                        width: 62,
                      ),
                      Text(":", style: TextStyle(color: kSubTitleColor)),
                      const SizedBox(
                        width: 30,
                      ),
                      Flexible(
                        child: Text(
                          "House # 34/35, Road # 14/A (New), Dhanmondi R/A, Dhaka-1209",
                          maxLines: 3,
                          style: TextStyle(color: kTitleColor),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Select Payment Methord",
                    style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Image.asset(
                    "assets/images/visa-nurse.png",
                    width: 140,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
