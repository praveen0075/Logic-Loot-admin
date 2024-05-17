import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/orders/order_display_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
       appBar: AppBar(
        title: const Text("Orders"),
        centerTitle: true,
      ),
      drawer: const SideBarWidget(),
      body: ListView.separated(itemBuilder: (context, index) => ListTile(
        onTap: (){
          Navigator.push(context, CupertinoPageRoute(builder: (context) =>const  OrderDisplayScreen(),));
        },
        title: const Text("ID: 93204720"),
        trailing: Container(
          height: size.height/25,
          width: size.width /4,
          decoration: BoxDecoration(
            // color: Colors.red.shade300,
            border: Border.all(color: Colors.green),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(child: Text("Success",style: TextStyle(color: Colors.green),)),
        ),
      ), separatorBuilder: (context, index) => divider, itemCount: 10)
    );
  }
}