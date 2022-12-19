import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:maan_doctor_appoinment/const/const.dart';
import 'package:maan_doctor_appoinment/ui/Home/mt_home.dart';
import 'package:maan_doctor_appoinment/ui/Pharmacy/mt_pharmacy.dart';
import 'package:maan_doctor_appoinment/ui/Profile/mt_profile.dart';

import '../Cart/mt_cart.dart';
import '../History/mt_history.dart';

class HomeBottomNavBarScreen extends StatefulWidget {
  const HomeBottomNavBarScreen({Key? key}) : super(key: key);

  @override
  State<HomeBottomNavBarScreen> createState() => _HomeBottomNavBarScreenState();
}

class _HomeBottomNavBarScreenState extends State<HomeBottomNavBarScreen> {
  var currentIndex = 0;

  List<Widget> pages = [const HomeScreen(), const PharmacyScreen(), const CartScreen(), const MyHistoryScreen(), const ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(currentIndex),
        bottomNavigationBar: ConvexAppBar(
            height: 72,
            shadowColor: kSubTitleColor.withOpacity(0.1),
            style: TabStyle.fixedCircle,
            color: kSubTitleColor,
            backgroundColor: kLikeWhiteColor,
            activeColor: kMainColor,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            items: [
              TabItem(
                  icon: Icon(
                    IconlyBold.home,
                    color: kSubTitleColor,
                  ),
                  title: "Home",
                  activeIcon: Icon(
                    IconlyBold.home,
                    color: kMainColor,
                  )),
              TabItem(
                  icon: ImageIcon(
                    const AssetImage(
                      "assets/icons/pharmacy.png",
                    ),
                    color: kSubTitleColor,
                  ),
                  title: "Pharmacy",
                  activeIcon: ImageIcon(
                    const AssetImage(
                      "assets/icons/pharmacy.png",
                    ),
                    color: kMainColor,
                  )),
              TabItem(
                  icon: Icon(
                    IconlyBold.buy,
                    color: kTitleColor,
                  ),
                  title: "",
                  activeIcon: Icon(
                    IconlyBold.buy,
                    color: kLikeWhiteColor,
                  )),
              TabItem(
                  icon: Icon(
                    IconlyBold.document,
                    color: kSubTitleColor,
                  ),
                  title: "Document",
                  activeIcon: Icon(
                    IconlyBold.document,
                    color: kMainColor,
                  )),
              TabItem(
                  icon: Icon(
                    IconlyBold.profile,
                    color: kSubTitleColor,
                  ),
                  title: "Profile",
                  activeIcon: Icon(
                    IconlyBold.profile,
                    color: kMainColor,
                  )),
            ]));
  }
}
