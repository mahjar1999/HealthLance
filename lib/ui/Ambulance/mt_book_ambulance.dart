import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Ambulance/mt_confirm_book.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class BookAmbulanceScreen extends StatefulWidget {
  const BookAmbulanceScreen({Key? key}) : super(key: key);

  @override
  State<BookAmbulanceScreen> createState() => _BookAmbulanceScreenState();
}

class _BookAmbulanceScreenState extends State<BookAmbulanceScreen> {
  var index = 0;

  var items = ["Badda", "Bangshal", "Biman Bandar", "Dhanmondi", "Canteonment"];
  var selection="Badda";


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kLikeWhiteColor,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Book Ambulance",
          style: ktitleTextStyle,
        ),
      ),
      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(14.0),
        child: AppButton(
          text: "Continue",
          textColor: kLikeWhiteColor,
          elevation: 0,
          color: kMainColor,
          onTap: () {
            const ConfirmBookScreen().launch(context);
          }

          ,
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(6)
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              color: kbigContainerColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: kLikeWhiteColor,
                      borderRadius: BorderRadius.circular(6.0)),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 96,
                        decoration: BoxDecoration(
                            color: kGAmbulanceBGColor,
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: kSubTitleColor.withOpacity(0.1)),
                            image: const DecorationImage(
                                scale: 2,
                                image: AssetImage("assets/images/general.png"))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "General Ambulance",
                        style: TextStyle(
                            color: kTitleColor, fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: kSubTitleColor,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Pickup Point",
                  style: ktitleTextStyle,
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 60.0,
                  child: FormField(
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            labelText: 'Your Area',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: kSubTitleColor.withOpacity(0.3))),),
                        child:
                        DropdownButtonHideUnderline(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: DropdownButton(
                                  value: selection,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: kSubTitleColor,
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(items));
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      selection = val!;
                                    });
                                  }),
                            )),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                AppTextField(
                    textFieldType: TextFieldType.MULTILINE,
                    decoration: InputDecoration(
                      label: const Text("Detail Address"),
                      labelStyle: TextStyle(color: kTitleColor),
                      hintText: "Enter your address ",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                    ),),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Destination Point",
                  style: ktitleTextStyle,
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 60.0,
                  child: FormField(
                    builder: (FormFieldState<dynamic> field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelText: 'Your Area',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                              BorderSide(color: kSubTitleColor.withOpacity(0.3))),),
                        child:
                        DropdownButtonHideUnderline(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: DropdownButton(
                                  value: selection,
                                  icon: Icon(
                                    Icons.keyboard_arrow_down,
                                    color: kSubTitleColor,
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                        value: items,
                                        child: Text(items));
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      selection = val!;
                                    });
                                  }),
                            )),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                AppTextField(
                    textFieldType: TextFieldType.MULTILINE,
                    decoration: InputDecoration(
                      label: const Text("Detail Address"),
                      labelStyle: TextStyle(color: kTitleColor),
                      hintText: "Enter your address",
                      hintStyle: TextStyle(color: kSubTitleColor,),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                    ),),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Total Payable",
                  style: TextStyle(color: kTitleColor),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "\$250.00",
                  style: ktitleTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
