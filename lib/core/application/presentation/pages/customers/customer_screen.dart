import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomerScreen extends StatelessWidget {
  const CustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customers"),
        centerTitle: true,
      ),
      drawer: const SideBarWidget(),
      body: ListView.separated(itemBuilder: (context, index) => ListTile(
        title: const Text("Customer name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        subtitle: const Text("7994078089"),
        trailing: ToggleSwitch(
  minWidth: 80.0,
  initialLabelIndex: 1,
  cornerRadius: 15.0,
  activeFgColor: Colors.white,
  inactiveBgColor: Colors.grey,
  inactiveFgColor: Colors.white,
  totalSwitches: 2,
  labels: const ['Block', 'Unblock'],
  activeBgColors: const [[Colors.red],[Colors.green]],
  onToggle: (index) {
    print('switched to: $index');
  },
),
      ), separatorBuilder: (context, index) => kheight10, itemCount: 10),
    );
  }
}