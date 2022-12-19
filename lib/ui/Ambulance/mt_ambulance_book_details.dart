import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class AmbulanceBookDetailsScreen extends StatefulWidget {
  const AmbulanceBookDetailsScreen({Key? key}) : super(key: key);

  @override
  State<AmbulanceBookDetailsScreen> createState() => _AmbulanceBookDetailsScreenState();
}

class _AmbulanceBookDetailsScreenState extends State<AmbulanceBookDetailsScreen> {
  var index = 0;

  var items = ["Badda", "Bangshal", "Biman Bandar", "Dhanmondi", "Canteonment"];
  var selection="Badda";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kLikeWhiteColor,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Ambulance Book Details",
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
                onTap: () {
                  finish(context);
                },
                shapeBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(color: kBadgeColor)),
                text: "Cancel",
                textStyle:
                TextStyle(color: kBadgeColor, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: AppButton(
                elevation: 0,
                enableScaleAnimation: false,
                onTap: () {},
                shapeBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
                color: kMainColor,
                text: "Reschedule",
                textStyle: TextStyle(
                    color: kElevatedButtonTextColor,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
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
            padding: const EdgeInsets.all(16.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: kLikeWhiteColor,
                        borderRadius: BorderRadius.circular(6.0)),
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 96,
                          decoration: BoxDecoration(
                              color: kGAmbulanceBGColor,
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                  color: kSubTitleColor.withOpacity(0.1)),
                              image: const DecorationImage(
                                  scale: 2,
                                  image: AssetImage("assets/images/general.png"))),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "General Ambulance",
                          style: TextStyle(
                              color: kTitleColor, fontWeight: FontWeight.w500),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: kSubTitleColor,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Map Direction",
                    style: ktitleTextStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Image.asset("assets/images/map.png",width: context.width(),),

                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Pickup Point: ",
                    style: ktitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Badda, 8 Bukit Batok Street 41, Bangladesh, 361025",
                    style: ksubTitleTextStyle,
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Destination Point: ",
                    style: ktitleTextStyle,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "House # 34/35, Road # 14/A (New), Dhanmondi R/A, Dhaka-1209",
                    style: ksubTitleTextStyle,
                  ),


                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Price",
                    style: ktitleTextStyle,
                  ),
                  Text(
                    "\$250.00",
                    style: ksubTitleTextStyle,
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
