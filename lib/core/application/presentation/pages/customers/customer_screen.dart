import 'dart:math';

import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List avatarColors = [
    Colors.red.shade300,
    Colors.yellow.shade300,
    Colors.green.shade300,
    Colors.blue.shade300,
    Colors.orange.shade300,
    Colors.pink.shade300,
    Colors.amber.shade300,
    Colors.purple.shade300,
    Colors.cyan.shade300,
    Colors.indigo.shade300,
  ];

  bool isBlock = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Random random = Random();
    return Scaffold(
   appBar: const PreferredSize(preferredSize:  Size.fromHeight(50), child: AppBarWidget(title: "Users",)),
      drawer: const SideBarWidget(),
      body: 
      ListView.separated(
          itemBuilder: (context, index) {
            Color avatarColor =
                avatarColors[random.nextInt(avatarColors.length)];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: avatarColor,
                radius: 25,
                child: const Center(
                    child: Text(
                  "A",
                  style: TextStyle(fontSize: 23),
                )),
              ),
              title: const Text(
                "user name",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text("7994078089"),
              trailing: Container(
                  height: size.height / 24,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: MaterialButton(
                      color: isBlock ? Colors.grey : appcolorblue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        setState(() {
                          isBlock = !isBlock;
                        });
                      },
                      child: Text(
                        isBlock ? "Unblock" : "Block",
                        style: const TextStyle(color: Colors.white),
                      ))),
            );
          },
          separatorBuilder: (context, index) => kheight10,
          itemCount: 20),
    );
  }
}
