// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:nb_utils/nb_utils.dart';

class AppOutlinedBorderButton extends StatelessWidget {
  String text;
  Function function;

  AppOutlinedBorderButton(this.text, this.function, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: text,
      color: kLikeWhiteColor,
      width: context.width(),
      onTap: function,
      elevation: 0,
      textStyle: TextStyle(
          color: kMainColor, fontWeight: FontWeight.bold),
      shapeBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          borderSide: BorderSide(color: kMainColor,width: 1)),
    );
  }
}
