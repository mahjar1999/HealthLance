import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_pharmacy_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';

class NearByPharmacyScreen extends StatelessWidget {
  const NearByPharmacyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          elevation: 0,
          title: Text(
            "Nearby Pharmacy",
            style: ktitleTextStyle,
          ),
          leading: BackButton(
            color: kTitleColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kbigContainerColor),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.80,
                    crossAxisCount: 2,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 0,
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 110,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/pharmacy_ladies.png"),
                                  fit: BoxFit.fill)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "HealthLance Pharmacy",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    IconlyLight.location,
                                    color: kMainColor,
                                    size: 16,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Dhaka Medical, bangladesh",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ImageIcon(
                                        const AssetImage("assets/images/truck.png"),
                                        size: 15,
                                        color: kTruckColor,
                                      ),
                                      Text(
                                        " Free delivery",
                                        style: ksubTitleTextStyle,
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        IconlyBold.star,
                                        color: kStarColor,
                                        size: 15,
                                      ),
                                      Text(
                                        " 4.5 ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: kTitleColor),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ).onTap(() => const PharmacyDetailsScreen().launch(context));
                },

              ),
            ),
          ),
        ),
      ),
    );
  }
}
