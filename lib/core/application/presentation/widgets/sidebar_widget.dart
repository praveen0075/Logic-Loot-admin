import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/coupons_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/customers/customer_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/login/login_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/orders/orders.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SideBarWidget extends StatefulWidget {
  const SideBarWidget({super.key});

  @override
  State<SideBarWidget> createState() => _SideBarWidgetState();
}

class _SideBarWidgetState extends State<SideBarWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          height: size.height - 1,
          decoration: const BoxDecoration(
              // gradient: LinearGradient(begin: Alignment.bottomCente,colors: [appcolorRose,appcolorblue,Colors.white])
              ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Wrap(
                children: [
                  buildHeader(context, size),
                  // divider,
                  buildMenuItems(context, size),
                ],
              ),
              //   const Divider(
              //   thickness: 2,
              // ),
              // buildfooter(context, size)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context, Size size) => Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [appcolorRose, appcolorblue])),
      width: double.infinity,
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      // color: Colors.blue,
      height: size.height / 6,
      // child: const Padding(
      //   // padding: EdgeInsets.only(),
      child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Align(
              alignment: Alignment.center,

              // child: Image(image: AssetImage("assets/images/Logic-loot.png"))),
              child: Text(
                "LOGIC LOOT",
                style: GoogleFonts.permanentMarker(
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ))));

  Widget buildMenuItems(BuildContext context, Size size) => Container(
        //  height: size.height /1.5,
        decoration: const BoxDecoration(
            // gradient: LinearGradient(colors:[appcolorRose,appcolorblue])
            ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildMenuItem(
                  context: context,
                  icon: Icons.dashboard_customize,
                  txt: "Dashboard",
                  index: 1,
                  targetScreen: const DashBoardScreen()),
              // divider,
              buildMenuItem(
                  context: context,
                  icon: Icons.shop,
                  txt: "Product",
                  index: 2,
                  targetScreen: const ProductScreen()),
              // divider,
              buildMenuItem(
                  context: context,
                  icon: Icons.category,
                  txt: "Categories",
                  index: 3,
                  targetScreen: const CategoryScreen()),
              // divider,
              buildMenuItem(
                  context: context,
                  icon: Icons.snippet_folder,
                  txt: "Orders",
                  index: 4,
                  targetScreen: const OrdersScreen()),
              // divider,
              buildMenuItem(
                  context: context,
                  icon: Icons.book_online_sharp,
                  txt: "Coupons",
                  index: 5,
                  targetScreen: const CouponScreen()),
              // divider,
              buildMenuItem(
                  context: context,
                  icon: Icons.group,
                  txt: "Customers",
                  index: 6,
                  targetScreen: const CustomerScreen()),
              divider,
              buildMenuItem(
                  context: context,
                  icon: Icons.privacy_tip,
                  txt: "Privacy & Policy",
                  index: 7,
                  targetScreen: DashBoardScreen()),
              buildMenuItem(
                  context: context,
                  icon: Icons.info,
                  txt: "Terms & Conditions",
                  index: 7,
                  targetScreen: DashBoardScreen()),
                  // SizedBox(height: 190,),
              ListTile(
                leading: const Icon(Icons.logout,color: Colors.red,),
                title: const Text("Log out",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,color: Colors.red),),
                onTap: () async {
                  SharedPreferences preff =
                      await SharedPreferences.getInstance();
                  preff.clear();
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (route) => false);
                },
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem(
      {required BuildContext context,
      required IconData icon,
      required String txt,
      required int index,
      required Widget targetScreen}) {
    bool isSelected = index == selectedIndex;
    return ListTile(
      leading: Icon(
        icon,
        color: isSelected ? appcolorRose : null,
      ),
      title: Text(
        txt,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: isSelected ? appcolorRose : null),
      ),
      onTap: () {
        selectedIndex = index;
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => targetScreen,
            ));
      },
    );
  }
}
