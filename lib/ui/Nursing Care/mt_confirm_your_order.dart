import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/History/Nursing%20Care%20History/mt_upcoming_nursing_care_history.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_home_bottom_nav.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class ConfirmYourOrderScreen extends StatefulWidget {
  const ConfirmYourOrderScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ConfirmYourOrderScreen> createState() => _ConfirmYourOrderScreenState();
}

class _ConfirmYourOrderScreenState extends State<ConfirmYourOrderScreen> {
  List nameImage = [
    "assets/images/visa.png",
    "assets/images/bkash.png",
    "assets/images/paypal.png",
    "assets/images/stripe.png",
    "assets/images/Cash On Delivery.png"
  ];
  List logo = [
    "assets/images/credit.png",
    "assets/images/bkash_logo.png",
    "assets/images/paypal_logo.png",
    "assets/images/stripe_logo.png",
    "assets/images/cod_logo.png"
  ];
  List miniContainerColors = [
    kStarColor.withOpacity(0.10),
    kBkashContainerColor.withOpacity(0.10),
    kPaypalContainerColor.withOpacity(0.10),
    kStripeContainerColor.withOpacity(0.10),
    kWatchColor.withOpacity(0.10)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        title: Text(
          "Confirm Your Order",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AppButton(
          text: "Payment Now (\$500)",
          textColor: kLikeWhiteColor,
          elevation: 0,
          color: kMainColor,
          onTap: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
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
                          style: TextStyle(fontWeight: FontWeight.bold, color: kTitleColor, fontSize: 28),
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
                            const UpcomingNursingCareHistoryScreen().launch(context);
                          },
                          //  padding: EdgeInsets.zero,
                          shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
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
                            const HomeBottomNavBarScreen().launch(context);
                          },
                          //  padding: EdgeInsets.zero,
                          shapeBorder: OutlineInputBorder(borderSide: BorderSide(color: kMainColor), borderRadius: BorderRadius.circular(6)),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
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
              )),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
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
                      const Spacer(),
                      Text(
                        "Change",
                        style: TextStyle(color: kBadgeColor),
                      )
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
                      const Spacer(),
                      Text(
                        "Change",
                        style: TextStyle(color: kBadgeColor),
                      )
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
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Select Payment Methord",
                        style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Change",
                        style: TextStyle(color: kBadgeColor),
                      )
                    ],
                  ),
                  HorizontalList(
                    itemCount: nameImage.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 56,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kLikeWhiteColor),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(shape: BoxShape.circle, color: miniContainerColors[index]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    logo[index],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset(
                                  nameImage[index],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
