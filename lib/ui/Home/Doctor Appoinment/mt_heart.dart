import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';

class HeartScreen extends StatelessWidget {
  const HeartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        elevation: 0,
        title: Text(
          "Heart",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: kDarkWhite,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(42),
                                  decoration: BoxDecoration(image: const DecorationImage(image: AssetImage("assets/images/doctorpro.png")), borderRadius: BorderRadius.circular(10)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Dr. Randy Wigham",
                                        style: TextStyle(fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        width: 220,
                                        child: RichText(
                                            maxLines: 3,
                                            text: TextSpan(
                                                text: "National Institute of Cancer Research & Hospital,",
                                                style: ksubTitleTextStyle,
                                                children: [TextSpan(text: " (Heart Specialist)", style: TextStyle(color: kMainColor))])),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      RichText(
                                          text: TextSpan(
                                              text: "Working at: ",
                                              style: TextStyle(color: kTitleColor),
                                              children: [TextSpan(text: " New York, USA", style: TextStyle(color: kSubTitleColor))])),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: kStarColor.withOpacity(0.15)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        IconlyBold.star,
                                        color: kStarColor,
                                        size: 16,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "4.9 (60)",
                                        style: TextStyle(color: kSubTitleColor),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: AppButton(
                                    padding: EdgeInsets.zero,
                                    elevation: 0,
                                    enableScaleAnimation: false,
                                    color: kMainColor,
                                    shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
                                    text: "Book Now",
                                    textStyle: TextStyle(color: kLikeWhiteColor, fontWeight: FontWeight.w700),
                                    onTap: () {},
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
