import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Order Id",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      Text("Status",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
              divider,
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) => ExpansionTile(
                   title: const Text("93204720",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                    trailing:
                            Text(
                          "Delivered",
                          style: TextStyle(color: Colors.green,fontSize: 15),
                        ),
                  children: [
                        ListTile(
                        title: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                              const Text("Products"),
                              SizedBox(
                                width: 150,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 3,
                                  itemBuilder: (context, index) => const Text("product name",textAlign: TextAlign.end,),) ,
                              )
                            ],),
                            kheight10,
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Shipping Adress"),
                                SizedBox(
                                  width: 150,
                                  child: Text("praveen C , cholayil house anakkara po , palakkad kerala, 679551",textAlign: TextAlign.end,),
                                )
                              ],
                            ),
                            kheight10,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Payment method"),
                                Text("Razorpay")
                              ],
                            ),
                            kheight10,
                             Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total amount"),
                                Text("₹5600")
                              ],
                            ),
                            kheight10,
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Payment status"),
                                Text("Pending")
                              ],
                            ),
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Update actions"),
                               PopupMenuButton<String>(
                                icon: const Icon(Icons.app_registration_rounded
                                ),
                                      onSelected: (value) {
                                    if (value == 'Shipped') {
                                    
                                    }else if(value == "Delivered"){

                                    }else if(value == "Pending"){

                                    }
                                     else if (value == 'Cancelled') {
                                      showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                                title: const Text(
                                                    "Delete Product",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                content: const Text(
                                                    "Do you want to delete this Product?"),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () async {
                                                        // context
                                                        //     .read<ProductBloc>()
                                                        //     .add(ProductEvent
                                                        //         .deleteProductByid(
                                                        //             productId: state
                                                        //                 .products[
                                                        //                     index]
                                                        //                 .id));
                                                        // Navigator.pop(context);
                                                      },
                                                      child: const Text(
                                                        "Delete",
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      )),
                                                  TextButton(
                                                      onPressed: () {},
                                                      child:
                                                          const Text("Cancel"))
                                                ],
                                              ));
                                    }
                                  }, itemBuilder: (BuildContext context) {
                                    return {'Delivered',"Shipped","Pending","Cancelled"}
                                        .map((String choice) {
                                      return PopupMenuItem<String>(
                                        value: choice,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            choice == "Cancelled" ? Text(choice,style: const TextStyle(color: Colors.red,fontWeight: FontWeight.bold),): Text(choice)
                                          ],
                                        ),
                                      );
                                    }).toList();
                                  })
                              ],
                            )
                          ],
                        ),
                        // ),
                        ),
                      ],
                ),
              )
            ],
          ),
        ));
  }
}
