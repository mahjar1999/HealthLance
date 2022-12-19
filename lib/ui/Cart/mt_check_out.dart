import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_confirm_order.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_shipping_address.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import 'mt_payment_method.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  State<CheckOutScreen> createState() => CheckOutScreenState();
}

class CheckOutScreenState extends State<CheckOutScreen> {
  var value = 0;
  bool isAdded = false;

  List<String> imageName = [
    "assets/images/paypal.png",
    "assets/images/bkash.png",
    "assets/images/cod.png"
  ];

  List<String> methodName = ["Paypal", "Bkash", "Cash On Delivery"];

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
        appBar: AppBar(
          centerTitle: false,
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: kTitleColor),
          title: Text(
            "Check Out",
            style: ktitleTextStyle,
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
              color: kLikeWhiteColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child:  Padding(
            padding: const EdgeInsets.all(14.0),
            child: AppButton(
              text: "Place Order",
              textColor: kLikeWhiteColor,
              enableScaleAnimation: false,
              elevation: 0,
              color: kMainColor,
              onTap: () => const ConfirmOrderScreen().launch(context),
              //  padding: EdgeInsets.zero,
              shapeBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            decoration: BoxDecoration(
                color: kbigContainerColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child:  Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Shipping Address",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kTitleColor),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    width: context.width(),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: kLikeWhiteColor,
                        border: Border.all(color: kSubTitleColor.withOpacity(0.1))
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: kShadowSecondColor.withOpacity(0.24),
                      //     blurRadius: 1,
                      //     offset: const Offset(1, 1), // Shadow position
                      //   ),
                      //   BoxShadow(
                      //     color: kShadowSecondColor.withOpacity(0.24),
                      //     blurRadius: 1,
                      //     offset: const Offset(-1, -1), // Shadow position
                      //   ),
                      // ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text(
                              "Shaidul Islam",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: kTitleColor),
                            ), Text(
                              "Change",
                              style: TextStyle(
                                  color: kBadgeColor),
                            ).onTap(()=> const ShippingAddress().launch(context)),

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
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment Method ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kTitleColor),
                      ),
                      Text(
                        "Change",
                        style: TextStyle(color: kBadgeColor),
                      ).onTap(()=> const PaymentMethodScreen().launch(context)),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  HorizontalList(
                    itemCount: nameImage.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 56,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: kLikeWhiteColor),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: miniContainerColors[index]),
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
                  const SizedBox(
                    height: 24,
                  ),
                    Text(
                      "Your Order",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kTitleColor,
                          fontSize: 20.0),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "Total Item",
                          style: TextStyle(color: kSubTitleColor),
                        ),
                        Text(
                          "03",
                          style: TextStyle(color: kTitleColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "Subtotal",
                          style: TextStyle(color: kSubTitleColor),
                        ),
                        Text(
                          "\$13.59",
                          style: TextStyle(color: kTitleColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "Delivery Fee",
                          style: TextStyle(color: kSubTitleColor),
                        ),
                        Text(
                          "Free",
                          style: TextStyle(color: kTitleColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "VAT",
                          style: TextStyle(color: kSubTitleColor),
                        ),
                        Text(
                          "\$0.00",
                          style: TextStyle(color: kTitleColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          "Total Amount",
                          style: TextStyle(
                              color: kTitleColor, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "\$13.59",
                          style: TextStyle(
                              color: kTitleColor, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
            ),
          ),
        ),);
  }
}
