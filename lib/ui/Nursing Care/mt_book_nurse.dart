import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Nursing%20Care/mt_confirm_your_order.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class BookNurseScreen extends StatefulWidget {
  const BookNurseScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<BookNurseScreen> createState() => _BookNurseScreenState();
}

class _BookNurseScreenState extends State<BookNurseScreen> {
  var gender = ["Male", "Female"];
  var selection = "Male";
  var ageValue = "10+";

  var agedropdownValue = [
    "10+",
    "15+",
    "20+",
    "25+",
    "30+",
    "35+",
    "40+",
  ];
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2020, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  DateTime selectedEnddDate = DateTime.now();

  Future<void> _selectEndDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(context: context, initialDate: selectedEnddDate, firstDate: DateTime(2020, 8), lastDate: DateTime(2101));
    if (picked != null && picked != selectedEnddDate) {
      setState(() {
        selectedEnddDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        title: Text(
          "Book Nurse",
          style: ktitleTextStyle,
        ),
        leading: BackButton(
          color: kTitleColor,
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AppButton(
          text: "Book Now",
          textColor: kLikeWhiteColor,
          elevation: 0,
          color: kMainColor,
          onTap: () {
            const ConfirmYourOrderScreen().launch(context);
          },
          //  padding: EdgeInsets.zero,
          shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
        ),
      ),
      body: SizedBox(
        height: context.height(),
        child: Container(
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
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Select Service",
                    style: TextStyle(color: k0000BlackColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: AppTextField(
                            readOnly: true,
                            showCursor: false,
                            textFieldType: TextFieldType.OTHER,
                            suffix: const Icon(IconlyLight.calendar).onTap(() => _selectDate(context)),
                            decoration: InputDecoration(
                                label: const Text("Start Date"),
                                hintText: '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                                labelStyle: TextStyle(color: kTitleColor),
                                hintStyle: TextStyle(color: kSubTitleColor),
                                floatingLabelBehavior: FloatingLabelBehavior.always,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                                ),
                                border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: AppTextField(
                          showCursor: false,
                          readOnly: true,
                          onTap: (() => _selectEndDate),
                          textFieldType: TextFieldType.OTHER,
                          suffix: const Icon(IconlyLight.calendar),
                          decoration: InputDecoration(
                            label: const Text("End Date"),
                            hintText: '${selectedEnddDate.day}/${selectedEnddDate.month}/${selectedEnddDate.year}',
                            labelStyle: TextStyle(color: kTitleColor),
                            hintStyle: TextStyle(color: kSubTitleColor),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: const OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "For Booking Nurse, We Need some Information",
                    style: TextStyle(color: k0000BlackColor, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                      textFieldType: TextFieldType.NAME,
                      decoration: InputDecoration(
                          label: const Text("Full Name"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "Enter your full name",
                          hintStyle: TextStyle(color: kSubTitleColor),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor, width: 1)))),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                      textFieldType: TextFieldType.NUMBER,
                      decoration: InputDecoration(
                          label: const Text("Phone Number"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "Enter your phone number",
                          hintStyle: TextStyle(color: kSubTitleColor),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor, width: 1)))),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                      textFieldType: TextFieldType.EMAIL,
                      decoration: InputDecoration(
                          label: const Text("Email (optional)"),
                          labelStyle: TextStyle(color: kTitleColor),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(color: kSubTitleColor),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: const OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor, width: 1)))),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 60.0,
                          child: FormField(
                            builder: (FormFieldState<dynamic> field) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'Gender',
                                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: kSubTitleColor.withOpacity(0.3))),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: DropdownButton(
                                      value: selection,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: kSubTitleColor,
                                      ),
                                      items: gender.map((String items) {
                                        return DropdownMenuItem(value: items, child: Text(items));
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
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 60.0,
                          child: FormField(
                            builder: (FormFieldState<dynamic> field) {
                              return InputDecorator(
                                decoration: InputDecoration(
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  labelText: 'Age',
                                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                                ),
                                child: DropdownButtonHideUnderline(
                                    child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: DropdownButton(
                                      value: ageValue,
                                      icon: Icon(
                                        Icons.keyboard_arrow_down,
                                        color: kSubTitleColor,
                                      ),
                                      items: agedropdownValue.map((String items) {
                                        return DropdownMenuItem(value: items, child: Text(items));
                                      }).toList(),
                                      onChanged: (val) {
                                        setState(() {
                                          ageValue = val!;
                                        });
                                      }),
                                )),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                      label: const Text("Address"),
                      labelStyle: TextStyle(color: kTitleColor),
                      hintText: "Enter your Address",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: const OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
