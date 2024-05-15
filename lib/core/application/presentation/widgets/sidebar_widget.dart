// import 'package:flutter/material.dart';
// // import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
// import 'package:logic_loot_admin/core/application/presentation/pages/category/category_screen.dart';
// import 'package:logic_loot_admin/core/application/presentation/pages/coupons/coupons_screen.dart';
// import 'package:logic_loot_admin/core/application/presentation/pages/customers/customer_screen.dart';
// import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
// import 'package:logic_loot_admin/core/application/presentation/pages/orders/orders.dart';
// import 'package:logic_loot_admin/core/application/presentation/pages/products/product_screen.dart';


// class SideBarWidget extends StatefulWidget {
//   const SideBarWidget({super.key});

//   @override
//   State<SideBarWidget> createState() => _SideBarWidgetState();
// }

// class _SideBarWidgetState extends State<SideBarWidget> {
//   // int selectedInt = 0;
//   @override
//   Widget build(BuildContext context) {
//     var size = MediaQuery.of(context).size;
//     var pages = [
//       const DashBoardScreen(),
//       const ProductScreen(),
//       const CategoryScreen(),
//       const OrdersScreen(),
//       const CouponScreen(),
//       const CustomerScreen(),
      
//     ];
//     return Scaffold(
//       body: Material(
//         elevation:  30,
//         child: Container(
//           width: size.width/1.7,
//           height: size.height,
//           color: Colors.blue,
//           child: const SafeArea(child: Column(
//             children: [
//               ListTile(
//                 title: Text("LOGIC LOOT ADMIN",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
//               ),
//               Divider(color: Colors.white,),
//               SideMenuTiles()
//             ],
//           )),
//         ),
//       ),
//     //   bottomNavigationBar: DotNavigationBar(
//     //     enableFloatingNavBar : false,
//     //     enablePaddingAnimation : true,
//     //     // splashColor: appcolorblue,
//     //     // animationCurve: Curves.linear,
//     //     // showElevation: true,
//     //     // selectedIndex: selectedInt,
//     //     currentIndex: selectedInt,
//     //     onTap: (index){
//     //       setState(() {
//     //         selectedInt = index;
//     //       });
//     //     },
//     //     items: [
//     //       // FlashyTabBarItem(icon: const Icon(Icons.home), title: const Text("Dashboard")),
//     //       // FlashyTabBarItem(icon: const Icon(Icons.category), title: const Text("Products")),
//     //       // FlashyTabBarItem(icon: const Icon(Icons.favorite), title: const Text("Categories")),
//     //       // FlashyTabBarItem(icon: const Icon(Icons.trolley), title: const Text("Cart")),
//     //       // FlashyTabBarItem(icon: const Icon(Icons.settings), title: const Text("Settings")),
//     //         DotNavigationBarItem(
//     //           icon: const Icon(Icons.home),
//     //         ),
//     //         DotNavigationBarItem(
//     //           icon: const Icon(Icons.category),
//     //         ),
//     //         DotNavigationBarItem(
//     //           icon: const Icon(Icons.favorite),
//     //         ),
//     //         DotNavigationBarItem(
//     //           icon: const Icon(Icons.trolley),
//     //         ),
//     //         DotNavigationBarItem(
//     //           icon: const Icon(Icons.settings),
//     //         ),
//     //         DotNavigationBarItem(
//     //           icon: const Icon(Icons.settings),
//     //         ),
//     //   ], 
//     //   // onItemSelected: (index)=>setState(() {
//     //   //   selectedInt = index;
//     //   // }),
//     //   ),
//     //   body: pages[selectedInt],
//     // );
//     // drawer: ListView(
    
//     //   children: [
        
//     //     const DrawerHeader(decoration: BoxDecoration(
//     //       color: Colors.blue,
//     //     ), child: Text("hello world"),),
//     //     ListTile(
//     //       title: const Text("Dashboard"),
//     //       onTap: () => const DashBoardScreen(),
//     //     ),
//     //       ListTile(
//     //       title: const Text("Product"),
//     //       onTap: () => const ProductScreen(),
//     //     ),
//     //       ListTile(
//     //       title: const Text("Product"),
//     //       onTap: () => const ProductScreen(),
//     //     ),
//     //       ListTile(
//     //       title: const Text("Product"),
//     //       onTap: () => const ProductScreen(),
//     //     ),
//     //       ListTile(
//     //       title: const Text("Product"),
//     //       onTap: () => const ProductScreen(),
//     //     ),
//     //   ],
//     // ),
//   //  body: pages[selectedInt],
//     );
//   }
// }

// class SideMenuTiles extends StatelessWidget {
//   const SideMenuTiles({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
   
//         ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Dashboard"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ),
//            ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Products"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ),
//            ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Categories"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ),
//            ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Orders"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ),
//            ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Coupons"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ),
//            ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Customers"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ), 
//            ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Banners"),
//         ),
//              const Divider(
//            color: Colors.white,
//            height: 1,
//         ), 
//              ListTile(
//           onTap: () {},
//           leading:Icon(Icons.home),
//           title: Text("Log out"),
//         ),
          
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/banners/bannner_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/coupons_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/customers/customer_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/login/login_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/orders/orders.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_screen.dart';

class SideBarWidget extends StatelessWidget {
  const SideBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
  padding:  EdgeInsets.only(
    top: MediaQuery.of(context).padding.top
  ),
);

Widget buildMenuItems(BuildContext context) => Container(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Wrap(
      children: [
        ListTile(
          leading: Icon(Icons.dashboard_customize),
          title: Text("DashBoard"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DashBoardScreen(),));
          },
        ),
          ListTile(
          leading: Icon(Icons.shop),
          title: Text("Product"),
          onTap: (){
            // Navigator.pop(context);
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProductScreen(),));
          },
        ),
          ListTile(
          leading: Icon(Icons.category),
          title: Text("Categories"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CategoryScreen(),));
          },
        ),
          ListTile(
          leading: Icon(Icons.snippet_folder),
          title: Text("Orders"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OrdersScreen(),));
          },
        ),
          ListTile(
          leading: Icon(Icons.book_online_sharp),
          title: Text("Coupons"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CouponScreen(),));
          },
        ),
          ListTile(
          leading: Icon(Icons.group),
          title: Text("Customers"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CustomerScreen(),));
          },
        ),
          ListTile(
          leading: Icon(Icons.format_color_text_outlined),
          title: Text("Banners"),
          onTap: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const BannersScreen(),));
          },
        ),
        Divider(
          thickness: 2,
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Log out"),
          onTap: () => Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const LoginScreen()), (route) => false)
,
        )
      ],
    ),
  ),
);

