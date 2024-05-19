import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/add_coupon_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/widgets/bottom_delete_option_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Coupons"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddCouponScreen(),
                ));
          },
          child: const Icon(Icons.add)),
      drawer: const SideBarWidget(),
      body: ListView.separated(
          itemBuilder: (context, index) =>  ListTile(
            onLongPress: () {
              showDeleteOption(ctx: context,indext: index);
            },
           title: const Row(
             children: [
              Icon(Icons.yard,size: 16,color: Colors.grey),
              kwidth10,
               Text("summ523",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ],
           ),
           trailing: const Text("Amount: ₹500"),
          ),
          separatorBuilder: (context, index) => kheight10,
          itemCount: 10),
    );
  }
}
