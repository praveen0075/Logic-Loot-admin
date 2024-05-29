import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/coupon/coupon_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/add_coupon_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/coupons/widgets/bottom_delete_option_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class CouponScreen extends StatefulWidget {
  const CouponScreen({super.key});

  @override
  State<CouponScreen> createState() => _CouponScreenState();
}

class _CouponScreenState extends State<CouponScreen> {

  @override
  void initState() {
    super.initState();
    BlocProvider.of<CouponBloc>(context).add(const CouponEvent.getCoupons());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(preferredSize:  Size.fromHeight(50), child: AppBarWidget(title: "Coupons",)),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appcolorRose,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddCouponScreen(),
                ));
          },
          child: const Icon(Icons.add)),
      drawer: const SideBarWidget(),
      body: BlocBuilder<CouponBloc, CouponState>(
        builder: (context, state) {
          if(state.isLoading){
            return const Center(child: CircularProgressIndicator());
          }else if(state.isGetCouponHasError){
            return  Center(child: Text(state.message??"Failed to Fetch Coupons"),);
          }else if (state.avialableCoupons.isEmpty){
            return const Center(child: Text("Coupon is Empty"),);
          }
          else{
          return ListView.separated(
              itemBuilder: (context, index) => ListTile(
                    onLongPress: () {
                      showDeleteOption(ctx: context, indext: index);
                    },
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text("Coupon Details"),
                            titleTextStyle: const TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            content: SizedBox(
                              height: size.height / 3,
                              width: size.width / 3,
                              child: ListView(
                                children: [
                                  ListTile(
                                    // leading: Text("•"),
                                    title: const Text(
                                      "• Code",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      state.avialableCoupons[index].code,
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14),
                                    ),
                                  ),
                                  ListTile(
                                    // leading: Text("•"),
                                    title: const Text(
                                      "• Amount",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      "₹${state.avialableCoupons[index].amount}",
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14),
                                    ),
                                  ),
                                  ListTile(
                                    // leading: Text("•"),
                                    title: const Text(
                                      "• Usedcount",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      state.avialableCoupons[index].usedcount.toString(),
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14),
                                    ),
                                  ),
                                  ListTile(
                                    // leading: Text("•"),
                                    title: const Text(
                                      "• Usage limit",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      state.avialableCoupons[index].usageLimit.toString(),
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14),
                                    ),
                                  ),
                                  ListTile(
                                    // leading: Text("•"),
                                    title: const Text(
                                      "• Validity",
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    trailing: Text(
                                      state.avialableCoupons[index].validUntil.isUtc.toString(),
                                      style: TextStyle(
                                          color: Colors.grey.shade600,
                                          fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    title:  Row(
                      children: [
                        const Icon(Icons.yard, size: 16, color: Colors.grey),
                        kwidth10,
                        Text(
                          state.avialableCoupons[index].code,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    trailing:  Text("Amount: ₹${state.avialableCoupons[index].amount}"),
                  ),
              separatorBuilder: (context, index) => kheight10,
              itemCount: state.avialableCoupons.length);
          }
        },
      ),
    );
  }
}
