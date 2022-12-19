import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Styles/style.dart';
import 'mt_check_out.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  var value = 0;
  int val = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
          leadingWidth: 16,
          centerTitle: false,
          elevation: 0,
          leading: BackButton(
            color: kTitleColor,
          ),
          backgroundColor: Colors.white,
          title: ListTile(
            title: const Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "Total 2 items",
              style: TextStyle(color: kSubTitleColor),
            ),
          )),
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
            text: "check Out",
            textColor: kLikeWhiteColor,
            enableScaleAnimation: false,
            elevation: 0,
            color: kMainColor,
            onTap: () => const CheckOutScreen().launch(context),
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return Slidable(
                  endActionPane: ActionPane(motion: const ScrollMotion(), children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(shape: BoxShape.circle, color: kBadgeColor.withOpacity(0.1)),
                        child: Icon(
                          IconlyBold.delete,
                          color: kBadgeColor,
                        ),
                      ),
                    ),
                  ]),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(50),
                          decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/napa.png"))),
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("(Paracetamol)", style: ksubTitleTextStyle),
                                    RichText(
                                        text: TextSpan(text: '\$6.99', style: TextStyle(color: kWatchColor, fontWeight: FontWeight.w600), children: [
                                          const WidgetSpan(
                                          child: SizedBox(
                                        width: 5,
                                      ),),
                                      TextSpan(
                                        text: '\$6.99',
                                        style: TextStyle(color: kSubTitleColor, decoration: TextDecoration.lineThrough, fontWeight: FontWeight.w400),
                                      ),
                                    ],),),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '10 tablets',
                                      style: ksubTitleTextStyle,
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(shape: BoxShape.circle, color: kTextFieldBorderColor),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(
                                              FeatherIcons.minus,
                                              color: kSubTitleColor,
                                            ),
                                          ),
                                        ).onTap(() {
                                          setState(() {
                                            val > 1 ? val-- : val = 1;
                                          });
                                        },),
                                        Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Text("$val"),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(shape: BoxShape.circle, color: kTextFieldBorderColor),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Icon(
                                              FeatherIcons.plus,
                                              color: kSubTitleColor,
                                            ),
                                          ),
                                        ).onTap(() {
                                          setState(() {
                                            val++;
                                          });
                                        },),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
            },
          ),
          DraggableScrollableSheet(
              initialChildSize: 0.5,
              maxChildSize: 0.7,
              minChildSize: 0.5,
              builder: (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: kbigContainerColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Promo Code",
                            style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                prefixIcon: Image.asset(
                                  "assets/images/cupon.png",
                                  scale: 2,
                                ),
                                hintText: "Coupon code",
                                hintStyle: TextStyle(color: kSubTitleColor),
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(6.0,),
                               ),
                                //   border: OutlineInputBorder(borderSide:  BorderSide(color:kSubTittleColor), borderRadius: BorderRadius.circular(6.0)),
                                suffixIcon: Container(
                                  width: 100,
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: kTruckColor,
                                      borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(6),
                                        bottomRight: Radius.circular(6),
                                      )),
                                  child: const Center(
                                    child: Text(
                                      "Apply",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                            height: 10,
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total Amount",
                                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "\$13.59",
                                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
