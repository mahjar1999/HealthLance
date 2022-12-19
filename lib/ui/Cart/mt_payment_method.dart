import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  bool _checkboxListTile = false;
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _bottomSheet() {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        )),
        isScrollControlled: true,
        builder: (builder) {
          return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Add New Card",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTitleColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.close,
                    color: kTitleColor,
                  ).onTap(() => finish(context)),
                )
              ],
            ),
            Container(
                decoration: BoxDecoration(
                  color: kLikeWhiteColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CreditCardWidget(
                      cardNumber: '3754 9000 0800 9735',
                      expiryDate: '05/31',
                      cardHolderName: "Ibne Riead",
                      cvvCode: '23/12',
                      bankName: 'VISA',
                      height: 210,
                      backgroundImage: "assets/images/card_bg.png",
                      showBackView: false,
                      obscureCardNumber: true,
                      isHolderNameVisible: true,
                      isChipVisible: false,
                      cardBgColor: Colors.white,
                      isSwipeGestureEnabled: true,
                      onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                        creditCardBrand = CreditCardBrand(CardType.visa);
                      },
                    ),
                    CreditCardForm(
                      formKey: formKey,
                      // Required
                      onCreditCardModelChange: (CreditCardModel data) {},
                      // Required
                      themeColor: Colors.red,
                      obscureCvv: false,
                      obscureNumber: false,
                      isHolderNameVisible: true,
                      isCardNumberVisible: true,
                      isExpiryDateVisible: true,
                      cardHolderDecoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(5.0),
                          border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                          labelText: 'Card Holder',
                          hintText: "Enter card holder name"),
                      cardNumberDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5.0),
                        border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                        labelText: 'Number',
                        hintText: 'Enter card number',
                      ),
                      expiryDateDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5.0),
                        border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                        labelText: 'Expired Date',
                        hintText: 'DD-MM-YYYY',
                      ),
                      cvvCodeDecoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(5.0),
                        border: OutlineInputBorder(borderSide: BorderSide(color: kTextFieldBorderColor)),
                        labelText: 'CVV',
                        hintText: 'Enter CVV number',
                      ),

                      cardNumber: '3754 9000 0800 9735',
                      expiryDate: '05/31',
                      cardHolderName: "Shaidul Islam",
                      cvvCode: '23/12',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: AppButton(
                        width: double.infinity,
                        text: "Save",
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
                    )
                  ],
                ))
          ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                  text: "Add New Card",
                  textColor: kLikeWhiteColor,
                  enableScaleAnimation: false,
                  elevation: 0,
                  color: kMainColor,
                  onTap: () => _bottomSheet(),
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
                'Payment Methord',
                style: TextStyle(color: kTitleColor, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  decoration: BoxDecoration(color: kbigContainerColor, borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0),
                          child: Text('Your payment cards', style: TextStyle(color: kTitleColor, fontWeight: FontWeight.w700)),
                        ),
                        CreditCardWidget(
                          cardNumber: '3754 9000 0800 9735',
                          expiryDate: '05/31',
                          cardHolderName: "Ibne Riead",
                          cvvCode: '23/12',
                          bankName: 'VISA',
                          height: 200,
                          backgroundImage: "assets/images/card_bg.png",
                          showBackView: false,
                          obscureCardNumber: true,
                          isHolderNameVisible: true,
                          isChipVisible: false,
                          cardBgColor: Colors.white,
                          isSwipeGestureEnabled: true,
                          onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                            creditCardBrand = CreditCardBrand(CardType.visa);
                          },
                        ),
                        CheckboxListTile(
                          contentPadding: const EdgeInsets.all(0),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: kMainColor,
                          title: Transform.translate(
                            offset: const Offset(-10, 0),
                            child: Text(
                              "Use as the payment methord",
                              style: TextStyle(color: kTitleColor),
                            ),
                          ),
                          value: _checkboxListTile,
                          onChanged: (value) {
                            setState(() {
                              _checkboxListTile = value!;
                            });
                          },
                        ),
                        CreditCardWidget(
                          cardNumber: '3754 9000 0800 9735',
                          expiryDate: '05/31',
                          cardHolderName: "Ibne Riead",
                          cvvCode: '23/12',
                          bankName: 'VISA',
                          height: 200,
                          backgroundImage: "assets/images/second_card.png",
                          showBackView: false,
                          obscureCardNumber: true,
                          isHolderNameVisible: true,
                          isChipVisible: false,
                          cardBgColor: Colors.white,
                          isSwipeGestureEnabled: true,
                          onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {
                            creditCardBrand = CreditCardBrand(CardType.visa);
                          },
                        ),
                        CheckboxListTile(
                          contentPadding: const EdgeInsets.all(0),
                          controlAffinity: ListTileControlAffinity.leading,
                          activeColor: kMainColor,
                          title: Transform.translate(
                            offset: const Offset(-10, 0),
                            child: Text(
                              "Use as the payment methord",
                              style: TextStyle(color: kTitleColor),
                            ),
                          ),
                          value: _checkboxListTile,
                          onChanged: (value) {
                            setState(() {
                              _checkboxListTile = value!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
