import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_shipping_address.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Cart/mt_cart.dart';

class UploadPrescriptionScreen extends StatefulWidget {
  const UploadPrescriptionScreen({Key? key}) : super(key: key);

  @override
  State<UploadPrescriptionScreen> createState() =>
      _UploadPrescriptionScreenState();
}

class _UploadPrescriptionScreenState extends State<UploadPrescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Upload Prescription",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(14.0),
        child: AppButton(
          text: "Continue",
          textColor: kLikeWhiteColor,
          elevation: 0,
          color: kMainColor,
          onTap: () => const CartScreen().launch(context),
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)),
        ),
      ),
      body: Container(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side:
                          BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(50),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/napa.png"))),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "HealthLance Pharmacy",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: kTitleColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FeatherIcons.mapPin,
                                      color: kMainColor,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Flexible(
                                      child: Text(
                                        '2715 Ash Dr. San Jose, South Dak...',
                                        style: ksubTitleTextStyle,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyLight.timeCircle,
                                      color: kWatchColor,
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Delivery: 25 - 30 mins',
                                      style: ksubTitleTextStyle,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Upload your Prescription ",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: context.width(),
                  child: Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: kSubTitleColor.withOpacity(0.10))),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: kMainColor,
                                  borderRadius:
                                      const BorderRadius.all(Radius.circular(10))),
                              child: Icon(
                                IconlyBold.upload,
                                color: kLikeWhiteColor,
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Attach Photo of Prescription",
                              style: TextStyle(
                                  color: kTitleColor,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "JPG, PNG format only",
                              style: TextStyle(
                                color: kSubTitleColor,
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Shipping Address",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                            color: kSubTitleColor.withOpacity(0.10))),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Shaidul Islam",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: kTitleColor),
                              ),
                              Text(
                                "Change",
                                style: TextStyle(color: kBadgeColor),
                              ).onTap(()=>const ShippingAddress().launch(context))
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "8 Bukit Batok Street 41, Bangladesh,\n361025",
                            style: TextStyle(color: kSubTitleColor),
                          )
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Message",
                  style: TextStyle(
                      color: kTitleColor, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                AppTextField(
                    textFieldType: TextFieldType.MULTILINE,
                    decoration: InputDecoration(
                      hintText: "Enter  message,,,",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      border: const OutlineInputBorder()
                    ),

                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
