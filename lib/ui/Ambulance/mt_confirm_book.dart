import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Ambulance/mt_ambulance_book_details.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_home_bottom_nav.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class ConfirmBookScreen extends StatefulWidget {
  const ConfirmBookScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmBookScreen> createState() => _ConfirmBookScreenState();
}

class _ConfirmBookScreenState extends State<ConfirmBookScreen> {
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
          "Confirm Your Book",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: AppButton(
                elevation: 0,
                enableScaleAnimation: false,
                onTap: () => finish(context),
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
                onTap: () => showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.circular(12.0)), //this right here
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Image.asset(
                                    "assets/images/hand_board.png",
                                    width: 124,
                                  ),
                                ),
                                Text(
                                  "Congratulation!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: kTitleColor,
                                      fontSize: 28),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(

                                  "Lorem ipsum dolor sit amet, consecte tur adipiscing elit. Scelerisque ac tempor amet proin vel",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(

                                      color: kSubTitleColor,
                                      ),
                                ),

                                const SizedBox(
                                  height: 28,
                                ),

                                AppButton(
                                  text: "See Your Book",
                                  textColor: kLikeWhiteColor,
                                  width: context.width(),
                                  enableScaleAnimation: false,
                                  padding: EdgeInsets.zero,
                                  elevation: 0,
                                  color: kMainColor,
                                  onTap: () {
                                    const AmbulanceBookDetailsScreen().launch(context);
                                  },
                                  //  padding: EdgeInsets.zero,
                                  shapeBorder: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                                AppButton(
                                  text: "Back to Home",
                                  width: context.width(),
                                  padding: EdgeInsets.zero,
                                  textColor: kMainColor,
                                  enableScaleAnimation: false,
                                  elevation: 0,
                                  color: kLikeWhiteColor,
                                  onTap: () {
                                    const  HomeBottomNavBarScreen().launch(context);
                                  },
                                  //  padding: EdgeInsets.zero,
                                  shapeBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: kMainColor),
                                      borderRadius: BorderRadius.circular(6)),
                                ),
                              ],
                            ),
                          ));
                    }),

                shapeBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide.none),
                color: kMainColor,
                text: "Confirm",
                textStyle: TextStyle(
                    color: kElevatedButtonTextColor,
                    fontWeight: FontWeight.w700),
              ),
            ),


          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: kbigContainerColor,
            borderRadius:const  BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
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
    );
  }
}
