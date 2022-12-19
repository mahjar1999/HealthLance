import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Diagnostics/mt_diagnostics_details.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../Styles/style.dart';


class AllDiagnostic extends StatefulWidget {
  const AllDiagnostic({Key? key}) : super(key: key);

  @override
  State<AllDiagnostic> createState() => _AllDiagnosticState();
}

class _AllDiagnosticState extends State<AllDiagnostic> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          elevation: 0,
          title: Text(
            "Diagnostic Center",
            style: ktitleTextStyle,
          ),
          leading: BackButton(
            color: kTitleColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kbigContainerColor),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.75,
                    crossAxisCount: 2,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6),
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: context.width() / 1.7,
                    child: Card(
                      elevation: 0,
                      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 128,
                            width: context.width(),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                                image: DecorationImage(image: AssetImage("assets/images/diagnostics_lab.png"), fit: BoxFit.fill)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Tested Labs.",
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      IconlyLight.location,
                                      color: kMainColor,
                                      size: 16,
                                    ),
                                    Flexible(
                                      child: Text(
                                        "Dhaka Medical, bangladesh",
                                        overflow: TextOverflow.ellipsis,
                                        style: ksubTitleTextStyle,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.star,
                                      color: kStarColor,
                                      size: 20,
                                    ),
                                    RichText(
                                        text: TextSpan(text: " 4.5 ", style: TextStyle(fontWeight: FontWeight.w400, color: kTitleColor), children: [
                                          TextSpan(text: "(100+ Ratings)", style: TextStyle(fontWeight: FontWeight.w400, color: kSubTitleColor)),
                                        ]))
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ).onTap(() => const DiagnosticsDetailsScreen().launch(context));
                },

              ),
            ),
          ),
        ),
      ),
    );
  }
}
