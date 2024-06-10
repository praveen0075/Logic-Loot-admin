
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/customer/customer_bloc.dart';
import 'package:logic_loot_admin/core/data/services/customer_services.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_all_user_response.dart';

class CustomerTileWidget extends StatefulWidget {
  const CustomerTileWidget({
    super.key,
    required this.size,
    required this.userList,
  });

  final Size size;
  final List<User> userList;

  @override
  State<CustomerTileWidget> createState() => _CustomerTileWidgetState();
}

class _CustomerTileWidgetState extends State<CustomerTileWidget> {
  bool toggle = true;
  @override
  Widget build(BuildContext context) { 
    return ListView.separated(
      itemBuilder: (context, index) {
        final user = widget.userList[index];
         toggle = user.permission;
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.purple.shade200,
            radius: 20,
            child: Center(
              child: Text(
                user.name[0],
                style: const TextStyle(fontSize: 23),
              ),
            ),
          ),
          title: Text(
            user.name,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(user.phone),
          trailing: Container(
            height: widget.size.height / 24,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton( 
              color: !toggle ? Colors.grey : Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              onPressed: ()async{
                await CustomerServices.toggleUser(widget.userList[index].id);
                setState(() { 
                  toggle = !toggle;
                  context.read<CustomerBloc>().add(const CustomerEvent.getAllCustomer());                 
                });
              }, 
              child: Text(
                toggle ? "block" : "Unblock",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemCount: widget.userList.length,
    );
  }
}
