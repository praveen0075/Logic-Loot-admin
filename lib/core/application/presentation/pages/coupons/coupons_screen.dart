import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class CouponScreen extends StatelessWidget {
  const CouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text("Coupons"),
      centerTitle: true ,
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
      },child: const Icon(Icons.add)),
      drawer: const SideBarWidget(),
      // body: ,
    );
  }
}