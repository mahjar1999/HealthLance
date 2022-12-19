import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';

class NearByHospitalScreen extends StatelessWidget {
  const NearByHospitalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        titleSpacing: 0,
        elevation: 0,
        title: Text(
          "Nearby Hospital",
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
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: kDarkWhite),
          child: GridView.builder(
            itemCount: 8,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 0.637, crossAxisCount: 2, crossAxisSpacing: 6, mainAxisSpacing: 6),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 0,
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 110,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                          image: DecorationImage(image: AssetImage("assets/images/hospital.png"), fit: BoxFit.fill)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            " Christ Hospital",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Icon(
                                IconlyLight.location,
                                color: kMainColor,
                                size: 16,
                              ),
                              Flexible(
                                child: Text(
                                  "Dhaka Medical, Ba...",
                                  overflow: TextOverflow.ellipsis,
                                  style: ksubTitleTextStyle,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    IconlyBold.star,
                                    color: kStarColor,
                                    size: 12,
                                  ),
                                  RichText(
                                      text: TextSpan(text: " 4.5 ", style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor), children: [
                                    TextSpan(text: "(100+ Ratings) ", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                  ]))
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          AppButton(
                              color: kMainColor,
                              elevation: 0,
                              padding: EdgeInsets.zero,
                              width: context.width() / 2.5,
                              onTap: () {},
                              shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
                              text: "Book Now",
                              textStyle: TextStyle(fontWeight: FontWeight.bold, color: kLikeWhiteColor))
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    ));
  }
}
