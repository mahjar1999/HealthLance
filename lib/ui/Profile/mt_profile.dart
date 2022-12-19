import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/ui/Profile/About%20Us/mt_about_us.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../const/const.dart';
import '../History/mt_history.dart';
import '../Styles/style.dart';
import 'Excerisze Reminder/mt_excersize_reminder.dart';
import 'Medicine Reminders/mt_medicine_reminders.dart';
import 'Weekly Checkup/mt_weekly_checkup.dart';
import 'mt_my_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List colors = [kMainColor, kStarColor, kWatchColor, kBadgeColor];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kLikeWhiteColor,
        elevation: 0,
        leading: BackButton(
          color: kTitleColor,
        ),
        title: Text(
          "Profile",
          style: ktitleTextStyle,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 85,
                width: context.width(),
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/profile-banner.png",
                        ),
                        fit: BoxFit.fill)),
                child: Center(
                    child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/profile-logo.png'),
                        radius: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ibne Riead",
                          style: TextStyle(color: kLikeWhiteColor, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          "Phone Number: 01855671615",
                          style: TextStyle(color: kLikeWhiteColor),
                        ),
                        Text(
                          "User ID: #74957485",
                          style: TextStyle(color: kLikeWhiteColor),
                        ),
                      ],
                    )
                  ],
                )),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: kbigContainerColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kMainColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.profile,
                              color: kMainColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "My Profile",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ))
                      ],
                    ).onTap(() {
                      const MyProfileScreen().launch(context);
                    }),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kStarColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.document,
                              color: kStarColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "History",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          ),
                        )
                      ],
                    ).onTap(
                      () => const MyHistoryScreen().launch(context),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kWatchColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.document,
                              color: kWatchColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Wishlist",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kBadgeColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.document,
                              color: kBadgeColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Weekly checkup",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),),
                      ],
                    ).onTap(() => const WeeklyCheckupScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kMainColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              MdiIcons.pill,
                              color: kMainColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Medicine Reminders",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ),),
                      ],
                    ).onTap(() => const MedicineRemindersScreen().launch(context),),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kStarColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.activity,
                              color: kStarColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Excersize Reminder",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ))
                      ],
                    ).onTap(() => const ExcersizeReminderScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kWatchColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.star,
                              color: kWatchColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Rate us",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kBadgeColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.infoCircle,
                              color: kBadgeColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "About us",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: kSubTitleColor,
                            ))
                      ],
                    ).onTap(() => const AboutUsScreen().launch(context)),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(shape: BoxShape.circle, color: kMainColor.withOpacity(0.12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              IconlyBold.logout,
                              color: kMainColor,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Text(
                          "Log out",
                          style: ksubTitleTextStyle,
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: kSubTitleColor,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
