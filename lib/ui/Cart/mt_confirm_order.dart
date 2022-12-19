import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_order_successful.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_payment_method.dart';
import 'package:maan_doctor_appoinment/ui/Cart/mt_shipping_address.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({Key? key}) : super(key: key);

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
            color: kLikeWhiteColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: AppButton(
            text: "Place Order",
            textColor: kLikeWhiteColor,
            enableScaleAnimation: false,
            elevation: 0,
            color: kMainColor,
            onTap: () => const OrderSuccessfulScreen().launch(context),
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'Confirm Your Order',
          style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
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
                const Text(
                  "Total Item (2)",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                HorizontalList(
                    itemCount: 4,
                    padding: EdgeInsets.zero,
                    runSpacing: 0,
                    itemBuilder: (_, index) {
                      return SizedBox(
                        width: context.width() / 1.3,
                        child: Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Container(
                                  width: 72,
                                  height: 72,
                                  decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/napa.png"), fit: BoxFit.fill)),
                                ),
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
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("(Paracetamol)", style: ksubTitleTextStyle),
                                          RichText(
                                            text: TextSpan(
                                              text: '\$6.99',
                                              style: TextStyle(color: kWatchColor, fontWeight: FontWeight.w600),
                                              children: [
                                                const WidgetSpan(
                                                  child: SizedBox(
                                                    width: 5,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: '\$6.99',
                                                  style: TextStyle(color: kSubTitleColor, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '10 tablets',
                                            style: ksubTitleTextStyle,
                                          ),
                                          Text(
                                            'Qty: 01',
                                            style: ksubTitleTextStyle,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const Text(
                      "Pharmecy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Icon(
                      Icons.check_circle_sharp,
                      color: kMainColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "HealthLance Pharmacy",
                  style: TextStyle(color: kSubTitleColor),
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      IconlyLight.location,
                      color: kSubTitleColor,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      "2715 Ash Dr. San Jose, South Dakota 83475",
                      style: TextStyle(
                        color: kSubTitleColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Shipping Address",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.check_circle_sharp,
                          color: kMainColor,
                        ),
                      ],
                    ),
                    Text(
                      "Change",
                      style: TextStyle(color: kBadgeColor),
                    ).onTap(() => const ShippingAddress().launch(context)),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "8 Bukit Batok Street 41, Bangladesh,\n361025",
                  style: TextStyle(
                    color: kSubTitleColor,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Payment Method",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Icon(
                          Icons.check_circle_sharp,
                          color: kMainColor,
                        ),
                      ],
                    ),
                    Text(
                      "Change",
                      style: TextStyle(color: kBadgeColor),
                    ).onTap(() => const PaymentMethodScreen().launch(context)),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  height: 56,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kMainColor),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kLikeWhiteColor),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              "assets/images/credit.png",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            "assets/images/visa.png",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                  children: [
                    Text(
                      "Delivery Fee",
                      style: TextStyle(color: kSubTitleColor),
                    ),
                    Text(
                      "\$2.00",
                      style: TextStyle(color: kTitleColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                  height: 4,
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Amount",
                      style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "\$13.59",
                      style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
