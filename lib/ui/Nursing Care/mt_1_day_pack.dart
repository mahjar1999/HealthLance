import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Nursing%20Care/mt_book_nurse.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class OneDayPackScreen extends StatefulWidget {
  const OneDayPackScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<OneDayPackScreen> createState() => _OneDayPackScreenState();
}

class _OneDayPackScreenState extends State<OneDayPackScreen> {
  bool _checkBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        appBar: AppBar(
          backgroundColor: kLikeWhiteColor,
          elevation: 0,
          title: Text(
            "1 Day Packs",
            style: ktitleTextStyle,
          ),
          leading: BackButton(
            color: kTitleColor,
          ),
        ),
        bottomNavigationBar: Container(
            height: 90,
            decoration: BoxDecoration(
                color: kLikeWhiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                )),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "1 Day",
                        style: TextStyle(color: kSubTitleColor),
                      ),
                      Text(
                        "\$500.00",
                        style: TextStyle(color: kMainColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    child: AppButton(
                      text: "Book Now",
                      textColor: kLikeWhiteColor,
                      elevation: 0,
                      enableScaleAnimation: false,
                      color: kMainColor,
                      onTap: () {
                        const BookNurseScreen().launch(context);
                      },
                      //  padding: EdgeInsets.zero,
                      shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                ],
              ),
            )),
        body: Container(
            decoration: BoxDecoration(
                color: kbigContainerColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Service",
                    style: TextStyle(color: k0000BlackColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CheckboxListTile(
                            value: _checkBox,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (val) {
                              setState(() {
                                _checkBox = !_checkBox;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Transform.translate(
                              offset: const Offset(-10, 0),
                              child: Text(
                                "Home Care",
                                style: ksubTitleTextStyle,
                              ),
                            ),
                            checkboxShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            )),
                      ),
                      Expanded(
                        child: CheckboxListTile(
                            value: _checkBox,
                            contentPadding: EdgeInsets.zero,
                            onChanged: (val) {
                              setState(() {
                                _checkBox = !_checkBox;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Transform.translate(
                              offset: const Offset(-10, 0),
                              child: Text(
                                "Home Care",
                                style: ksubTitleTextStyle,
                              ),
                            ),
                            checkboxShape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2),
                            )),
                      ),
                    ],
                  ),
                  Text(
                    "Overview of the package",
                    style: TextStyle(color: k0000BlackColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Icon(IconlyBold.arrowRight),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        pac1,
                        style: TextStyle(color: kSubTitleColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(IconlyBold.arrowRight),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          pac2,
                          maxLines: 5,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(IconlyBold.arrowRight),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          pac3,
                          maxLines: 5,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      )
                    ],
                  ),
                  const  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(IconlyBold.arrowRight),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          pac3,
                          maxLines: 5,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      )
                    ],
                  ),
                  const  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(IconlyBold.arrowRight),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          pac1,
                          maxLines: 5,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(IconlyBold.arrowRight),
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Text(
                          pac3,
                          maxLines: 5,
                          style: TextStyle(color: kSubTitleColor),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )));
  }
}
