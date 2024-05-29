import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
appBar:  PreferredSize(preferredSize:  Size.fromHeight(50), child: AppBarWidget(title: "Dashboard",)),
      drawer:  SideBarWidget(),
    );
  }
}