import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/auth/mt_phone_varification.dart';
import 'package:maan_doctor_appoinment/ui/auth/mt_signin.dart';
import 'package:maan_doctor_appoinment/ui/widgets/elevated_button.dart';
import 'package:nb_utils/nb_utils.dart';

import '../Styles/style.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        titleTextStyle: ktitleTextStyle.copyWith(fontSize: 20),
        leading: const BackButton(color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                signInText,
                style: ksubTitleTextStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                  textFieldType: TextFieldType.NAME,
                  decoration: InputDecoration(
                      label: const Text("Full Name"),
                      labelStyle: TextStyle(color: kTitleColor),
                      hintText: "Jane Cooper",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.EMAIL,
                decoration: InputDecoration(
                  label: const Text("Email"),
                  labelStyle: TextStyle(color: kTitleColor),
                  hintText: "janecooper@gmail.com",
                  hintStyle: TextStyle(color: kSubTitleColor),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: kTextFieldBorderColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextField(
                textFieldType: TextFieldType.NUMBER,
                decoration: InputDecoration(
                    label: const Text("Mobile Number"),
                    labelStyle: TextStyle(color: kTitleColor),
                    hintText: '',
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
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
                height: 16,
              ),
              AppTextField(
                  textFieldType: TextFieldType.PASSWORD,
                  decoration: InputDecoration(
                      label: const Text("Password"),
                      labelStyle: TextStyle(color: kTitleColor),
                      hintText: "******",
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)))),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Checkbox(
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value!;
                      });
                    },
                    side: BorderSide(color: kSubTitleColor),
                    checkColor: kLikeWhiteColor,
                    activeColor: kMainColor,
                  ),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(text: "I have read and agree to the ", style: TextStyle(color: kSubTitleColor), children: [
                      TextSpan(text: "privacy policy", style: TextStyle(color: kMainColor)),
                      TextSpan(text: " &", style: TextStyle(color: kTitleColor)),
                      TextSpan(text: "\nTermes & Conditions", style: TextStyle(color: kMainColor)),
                    ]),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              AppElevatedButton(
                "Sign Up",
                () => const PhoneVarificationScreen().launch(context),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(text: "Already have an account? ", style: TextStyle(color: kSubTitleColor), children: [
                  TextSpan(text: "SIGN IN", style: TextStyle(color: kMainColor)),
                ]),
              ).onTap(() => const SignInScreen().launch(context))
            ],
          ),
        ),
      ),
    );
  }
}
