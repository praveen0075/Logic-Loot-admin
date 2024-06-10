
import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/bloc/customer/customer_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_user_response.dart';

class CustomerTileWidget extends StatelessWidget {
   const CustomerTileWidget({
    super.key,
    required this.size,
    required this.isBlock, required this.userList,
  });

  final Size size;
  final bool isBlock;
  final List<User> userList;


  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.purple.shade200,
              radius: 20,
              child:  Center(
                  child: Text(
                    userList[index].name[0],
                style: const TextStyle(fontSize: 23),
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
                      // setState(() {
                      //   isBlock = !isBlock;
                      // });
                    },
                    child: Text(
                      isBlock ? "Unblock" : "Block",
                      style: const TextStyle(color: Colors.white),
                    ))),
          );
        },
        separatorBuilder: (context, index) => kheight10,
        itemCount: userList.length);
  }
}
