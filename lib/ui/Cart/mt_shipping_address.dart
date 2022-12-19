import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class ShippingAddress extends StatefulWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  State<ShippingAddress> createState() => _ShippingAddressState();
}

class _ShippingAddressState extends State<ShippingAddress> {
  bool isToggled = true;

  void _showModalBottomSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        builder: (builder) {
          return StatefulBuilder(
            builder: (BuildContext context, void Function(void Function()) setState) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add New Address",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: kTitleColor,
                            ),
                          ),
                          // Spacer(),
                          Icon(
                            Icons.close,
                            color: kTitleColor,
                          ).onTap(() => finish(context)),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppTextField(
                          textFieldType: TextFieldType.NAME,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 10),
                              label: const Text("Full Name"),
                              labelStyle: TextStyle(color: kTitleColor),
                              hintText: "Enter your name",
                              hintStyle: TextStyle(color: kSubTitleColor),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
                      const SizedBox(
                        height: 18,
                      ),
                      AppTextField(
                          textFieldType: TextFieldType.NAME,
                          decoration: InputDecoration(
                              label: const Text("Conuntry"),
                              contentPadding: const EdgeInsets.only(left: 10),
                              labelStyle: TextStyle(color: kTitleColor),
                              hintText: "Bangladesh",
                              hintStyle: TextStyle(color: kSubTitleColor),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
                      const SizedBox(
                        height: 18,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NAME,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(left: 10),
                          label: const Text("Street Address"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "6391 Elgin St. Celina, Delaware 10299",
                          hintStyle: TextStyle(color: kSubTitleColor),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: kTextFieldBorderColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(left: 10),
                                    label: const Text("Town / City"),
                                    labelStyle: TextStyle(color: kTitleColor),
                                    hintText: "Dhaka",
                                    hintStyle: TextStyle(color: kSubTitleColor),
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: AppTextField(
                                textFieldType: TextFieldType.NAME,
                                decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(left: 10),
                                    label: const Text("Postcode"),
                                    labelStyle: TextStyle(color: kTitleColor),
                                    hintText: "3610",
                                    hintStyle: TextStyle(color: kSubTitleColor),
                                    floatingLabelBehavior: FloatingLabelBehavior.always,
                                    border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      AppTextField(
                          textFieldType: TextFieldType.NAME,
                          decoration: InputDecoration(
                              label: const Text("Email"),
                              contentPadding: const EdgeInsets.only(left: 10),
                              labelStyle: TextStyle(color: kTitleColor),
                              hintText: "janecooper@gmail.com",
                              hintStyle: TextStyle(color: kSubTitleColor),
                              floatingLabelBehavior: FloatingLabelBehavior.always,
                              border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
                      const SizedBox(
                        height: 18,
                      ),
                      AppTextField(
                        textFieldType: TextFieldType.NUMBER,
                        decoration: InputDecoration(
                            labelText: "Mobile Number",
                            contentPadding: const EdgeInsets.only(left: 10),
                            labelStyle: TextStyle(color: kTitleColor),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintText: "Mobile Number",
                            border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(left: 8.0, right: 6.0),
                              child: CountryPickerDropdown(
                                initialValue: 'AR',
                                iconSize: 18.0,
                                itemBuilder: _buildDropdownItem,
                                priorityList: [
                                  CountryPickerUtils.getCountryByIsoCode('GB'),
                                  CountryPickerUtils.getCountryByIsoCode('CN'),
                                ],
                                sortComparator: (Country a, Country b) => a.isoCode.compareTo(b.isoCode),
                                onValuePicked: (Country country) {},
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Use as Billing address',
                            style: ksubTitleTextStyle,
                          ),
                          FlutterSwitch(
                            height: 20.0,
                            width: 40.0,
                            padding: 4.0,
                            toggleSize: 15.0,
                            borderRadius: 10.0,
                            activeColor: kWatchColor,
                            value: isToggled,
                            onToggle: (value) {
                              setState(() {
                                isToggled = value;
                              });
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20.0),
                        child: AppButton(
                          text: "Save",
                          width: double.infinity,
                          textColor: kLikeWhiteColor,
                          enableScaleAnimation: false,
                          elevation: 0,
                          color: kMainColor,
                          onTap: () {
                            finish(context);
                          },
                          //  padding: EdgeInsets.zero,
                          shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  Widget _buildDropdownItem(Country country) => SizedBox(
        width: 80.0,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            const SizedBox(
              width: 8.0,
            ),
            Text(
              "+${country.phoneCode}",
              style: const TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      );

  List<String> addressList = [
    '8 Bukit Batok Street 41, Bangladesh,361025',
    '8 Bukit Batok Street 42, Bangladesh,361030',
    '8 Bukit Batok Street 43, Bangladesh,361035',
  ];

  String isSelected = '8 Bukit Batok Street 41, Bangladesh,361025';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: kTitleColor),
          elevation: 0,
          title: Text(
            "Shipping Address",
            style: TextStyle(color: kTitleColor),
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
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: AppButton(
              text: "Add New Address",
              textColor: kLikeWhiteColor,
              enableScaleAnimation: false,
              elevation: 0,
              color: kMainColor,
              onTap: () => _showModalBottomSheet(),
              //  padding: EdgeInsets.zero,
              shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Select Shipping Address",
                      style: TextStyle(fontWeight: FontWeight.bold, color: kTitleColor),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: addressList.length,
                        itemBuilder: (_, i) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 6.0),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected = addressList[i];
                                });
                              },
                              child: Container(
                                  padding: const EdgeInsets.all(15),
                                  width: context.width(),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    color: isSelected == addressList[i] ? const Color(0xFFEDEFFE).withOpacity(0.1) : kLikeWhiteColor,
                                    border: Border.all(
                                      color: isSelected == addressList[i] ? kMainColor : kSubTitleColor.withOpacity(0.1),
                                    ),
                                  ),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Shaidul Islam",
                                          style: TextStyle(fontWeight: FontWeight.w600, color: kTitleColor),
                                        ),
                                        Text(
                                          "Edit",
                                          style: TextStyle(color: kBadgeColor),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      addressList[i],
                                      style: TextStyle(color: kSubTitleColor),
                                    )
                                  ])),
                            ),
                          );
                        })
                  ]),
                ),
              )),
        ));
  }
}
