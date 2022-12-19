import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/model/mt_doctor_model.dart';
import 'package:maan_doctor_appoinment/ui/Home/Doctor%20Appoinment/mt_doctor_details.dart';
import 'package:maan_doctor_appoinment/ui/Styles/style.dart';
import 'package:nb_utils/nb_utils.dart';

class PopularDoctorScreen extends StatefulWidget {
  const PopularDoctorScreen({Key? key}) : super(key: key);

  @override
  State<PopularDoctorScreen> createState() => _PopularDoctorScreenState();
}

class _PopularDoctorScreenState extends State<PopularDoctorScreen> {
  String selected = "first";

  List tittleList = [
    "All",
    "Cardiology",
    "diabets",
    "Cancer",
    "diabets",
    "Cancer",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            " Find Your Family Doctor",
            style: ktitleTextStyle,
          ),
          leading: BackButton(
            color: kTitleColor,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0), borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        IconlyLight.search,
                        color: kTitleColor,
                      ),
                      hintText: "Search...",
                      hintStyle: TextStyle(color: kSubTitleColor),
                      filled: true,
                      fillColor: kTextFieldColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                HorizontalList(
                    itemCount: tittleList.length,
                    itemBuilder: (_, index) {
                      return Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: kLikeWhiteColor, border: Border.all(color: kTextFieldBorderColor)),
                        child: Text(
                          tittleList[index],
                          style: TextStyle(fontWeight: FontWeight.w600, color: kSubTitleColor),
                        ),
                      );
                    }),
                const SizedBox(
                  height: 24,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: allDoctors.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10), side: BorderSide(color: kSubTitleColor.withOpacity(0.10))),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 82,
                                  height: 82,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8), image: DecorationImage(image: AssetImage(allDoctors[index].image ?? ''), fit: BoxFit.fill)),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      allDoctors[index].doctorName ?? '',
                                      style: const TextStyle(fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      allDoctors[index].speciality ?? '',
                                      style: TextStyle(fontWeight: FontWeight.w400, color: kMainColor),
                                    ),
                                    SizedBox(
                                      width: context.width() / 2,
                                      child: Text(
                                        allDoctors[index].hospital ?? '',
                                        maxLines: 2,
                                        style: const TextStyle(fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    RichText(
                                        text: TextSpan(text: "Working at: ", style: TextStyle(color: kTitleColor), children: [
                                      TextSpan(
                                        text: "${allDoctors[index].location}",
                                        style: TextStyle(color: kSubTitleColor),
                                      ),
                                    ],),),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: kStarColor.withOpacity(0.15)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        IconlyBold.star,
                                        color: kStarColor,
                                        size: 16,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        allDoctors[index].ratings ?? '',
                                        style: TextStyle(color: kSubTitleColor),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        "(${allDoctors[index].ratingCount})",
                                        style: TextStyle(color: kSubTitleColor),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: AppButton(
                                    padding: EdgeInsets.zero,
                                    elevation: 0,
                                    color: kMainColor,
                                    shapeBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(5), borderSide: BorderSide.none),
                                    text: "Book Now",
                                    textStyle: TextStyle(color: kLikeWhiteColor, fontWeight: FontWeight.w700),
                                    onTap: () {},
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ).onTap(() => const DoctorDetailsScreen().launch(context));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
