import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(

      ),
      drawer: SideBarWidget(),
    );
  }
}