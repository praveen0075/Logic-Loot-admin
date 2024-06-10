import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/customer/customer_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/customers/widgets/customer_tile_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  // List avatarColors = [
  //   Colors.red.shade300,
  //   Colors.yellow.shade300,
  //   Colors.green.shade300,
  //   Colors.blue.shade300,
  //   Colors.orange.shade300,
  //   Colors.pink.shade300,
  //   Colors.amber.shade300,
  //   Colors.purple.shade300,
  //   Colors.cyan.shade300,
  //   Colors.indigo.shade300,
  // ];

  // Random random = Random();
  // Color? avatarColor;

  bool isBlock = true;
  @override
  Widget build(BuildContext context) {
    
    // WidgetsBinding.instance.addPostFrameCallback((_) {
        BlocProvider.of<CustomerBloc>(context).add(const CustomerEvent.getAllCustomer());
    // });
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: "Users",
          )),
      drawer: const SideBarWidget(),
      body: BlocBuilder<CustomerBloc, CustomerState>(
        builder: (context, state) {
          if(state is Loading){
            return const Center(child: CircularProgressIndicator(),);
          }else if(state is ErrorSt){
            return Center(child: Text(state.errmsg),);
          }else if (state is Success){
            print(state.users);
            final userList = state.users;
          return CustomerTileWidget(size: size, isBlock: isBlock,userList: userList,);
          }else{
            return const Center(child: Text("Internal Error"),);
          }
        },
      ),
    );
  }
}
