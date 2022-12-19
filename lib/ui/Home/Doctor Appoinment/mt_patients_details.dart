import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../../const/const.dart';
import '../../Styles/style.dart';
import 'mt_payment.dart';

class PatientsDetailsScreen extends StatefulWidget {
  const PatientsDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PatientsDetailsScreen> createState() => _PatientsDetailsScreenState();
}

class _PatientsDetailsScreenState extends State<PatientsDetailsScreen> {
  List<String> gender = [
    'Male',
    'Female',
  ];

  String selectedGender = 'Male';

  DropdownButton<String> getGender() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in gender) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: selectedGender,
      style: TextStyle(color: kSubTitleColor),
      onChanged: (value) {
        setState(() {
          selectedGender = value!;
        });
      },
    );
  }

  List<String> age = [
    'Select Age',
    '10+',
    '20+',
    '30+',
    '40+',
    '50+',
    '60+',
  ];

  String selectedAge = 'Select Age';

  DropdownButton<String> getAge() {
    List<DropdownMenuItem<String>> dropDownItems = [];
    for (String des in age) {
      var item = DropdownMenuItem(
        value: des,
        child: Text(des),
      );
      dropDownItems.add(item);
    }
    return DropdownButton(
      items: dropDownItems,
      value: selectedAge,
      style: TextStyle(color: kSubTitleColor),
      onChanged: (value) {
        setState(() {
          selectedAge = value!;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: kTitleColor,
          ),
          title: Text(
            "Patient’s Details",
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
            onTap: () => const PaymentScreen().launch(context),
            //  padding: EdgeInsets.zero,
            shapeBorder: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(6)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.NAME,
                    decoration: InputDecoration(
                        label: const Text("Full Name"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Enter your full name",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor, width: 1)))),
                const SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.NUMBER,
                    decoration: InputDecoration(
                        label: const Text("Phone Number"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Enter your phone number",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor, width: 1)))),
                const SizedBox(
                  height: 15,
                ),
                AppTextField(
                    textFieldType: TextFieldType.EMAIL,
                    decoration: InputDecoration(
                        label: const Text("Email (optional)"),
                        labelStyle: TextStyle(color: kTitleColor),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: kSubTitleColor),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor, width: 1)))),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 65,
                        child: FormField(
                          builder: (FormFieldState<dynamic> field) {
                            return InputDecorator(
                                decoration: InputDecoration(
                                  label: const Text('Gender'),
                                  labelStyle: TextStyle(color: kTitleColor),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: getGender(),
                                ));
                          },
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 65,
                        child: FormField(
                          builder: (FormFieldState<dynamic> field) {
                            return InputDecorator(
                                decoration: InputDecoration(
                                  label: const Text('Age'),
                                  labelStyle: TextStyle(color: kTitleColor),
                                  floatingLabelBehavior: FloatingLabelBehavior.always,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                                  ),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: getAge(),
                                ));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                AppTextField(
                  textFieldType: TextFieldType.MULTILINE,
                  decoration: InputDecoration(
                    label: const Text("Write Your Problem"),
                    labelStyle: TextStyle(color: kTitleColor),
                    hintText: "Tell doctor about your problem",
                    hintStyle: TextStyle(color: kSubTitleColor),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: kTextFieldBorderColor, width: 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
