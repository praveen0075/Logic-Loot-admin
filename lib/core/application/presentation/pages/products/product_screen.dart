import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/add_product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/widgets/product_tile_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  // @override
  @override
  Widget build(BuildContext context) {
    
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget( 
            title: "Products",
          )),
      drawer: const SideBarWidget(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: appcolorRose,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddProductScreen(),
              ));
        },
        child: const Icon(Icons.add),
      ),
       body: ProductTileWidget(size: size),
    );
  }


}

// class ProductTileWidget extends StatelessWidget {
//   const ProductTileWidget({
//     super.key,
//     required this.size,
//   });

//   final Size size;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//      padding: const EdgeInsets.all(8.0),
//      child: SizedBox(
//                height: size.height / 1.19,
//                child: ListView.separated(
//                    itemBuilder: (context, index) {
//                      // if (state.prouctModel![index].name.length >= 20) {
//                      //   final name = state.prouctModel![index].name;
//                      //   productName = "${name.substring(0, 17)}...";
//                      // } else {
//                      //   productName = state.prouctModel![index].name;
//                      // }
//                      return Card(
//                        elevation: 10,
//                        child: InkWell(
//                          onTap: () {
//                            // Navigator.push(
//                            //     context,
//                            //     MaterialPageRoute(
//                            //       builder: (context) => ProductDisplayScreen(
//                            //         id: state.prouctModel![index].id,
//                            //       ),
//                            //     ));
//                          },
//                          onLongPress: () {
//                            // showLongpressOptionsforProduct(
//                            //     ctx: context,
//                            //     indext: index,
//                            //     prdouctId: state.prouctModel![index].id);
//                          },
//                          child: Stack(
//                            children: [
//                              IconButton(
//                                  onPressed: () {},
//                                  icon: const Icon(
//                                    Icons.more,
//                                    color: Colors.red,
//                                  )),
//                              Container(
//                                decoration: BoxDecoration(
//                                    color: Colors.white,
//                                    border: Border.all(
//                                        color: Colors.grey.shade400),
//                                    borderRadius: BorderRadius.circular(10)),
//                                height: size.height / 7,
//                                // width: 100,
//                                child: Row(
//                                  children: [
//                                    kwidth10,
//                                    Container(
//                                      height: size.height / 9,
//                                      width: size.width / 4,
//                                      // color: Colors.blue,
//                                      decoration: BoxDecoration(
//                                          border: Border.all(
//                                              color: Colors.grey.shade400),
//                                          borderRadius:
//                                              BorderRadius.circular(10)),
//                                      child: ClipRRect(
//                                          borderRadius:
//                                              BorderRadius.circular(10),
//                                          // child: Image(
//                                          //   image: NetworkImage(state
//                                          //       .prouctModel![index]
//                                          //       .imageUrl),
//                                          //   fit: BoxFit.cover,
//                                          // )
//                                          ),
//                                    ),
//                                    kwidth15,
//                                    SizedBox(
//                                      width: size.width / 1.7,
//                                      child: Column(
//                                        crossAxisAlignment:
//                                            CrossAxisAlignment.start,
//                                        mainAxisAlignment:
//                                            MainAxisAlignment.spaceEvenly,
//                                        children: [
//                                          kheight10,
//                                          Text(
//                                            // productName,
//                                            "",
//                                            style: const TextStyle(
//                                                fontSize: 20,
//                                                fontWeight: FontWeight.bold),
//                                          ),
//                                          Text(
//                                              // state.prouctModel![index].size
//                                              ""
//                                              ),
//                                          Row(
//                                            mainAxisAlignment:
//                                                MainAxisAlignment
//                                                    .spaceBetween,
//                                            children: [
//                                              Text(
//                                                // "₹${state.prouctModel![index].price.toString()}",
//                                                "",
//                                                style: const TextStyle(
//                                                    fontSize: 18,
//                                                    fontWeight:
//                                                        FontWeight.w500),
//                                              ),
//                                              // kwidth40,
//                                              // state.prouctModel![index]
//                                              //             .quantity <=
//                                              //         0
//                                              //     ? stockIndicator(
//                                              //         clr: Colors.red,
//                                              //         txt: "Out stock")
//                                              //     : stockIndicator(
//                                              //         clr: Colors.green,
//                                              //         txt: "In stock")
//                                            ],
//                                          ),
//                                          kheight10,
//                                        ],
//                                      ),
//                                    ),
//                                  ],
//                                ),
//                              ),
//                              Positioned(
//                                  right: 10,
//                                  top: 10,
//                                  child: PopupMenuButton<String>(
    
//                                      onSelected: (value) {
//                                    if (value == 'Edit') {
//                                      // Navigator.push(
//                                      //   context,
//                                      //   MaterialPageRoute(
//                                      //     builder: (context) =>
//                                      //         EditProductScreen(
//                                      //             productId: state
//                                      //                 .prouctModel![index]
//                                      //                 .id),
//                                      //   ),
//                                      // );
//                                    } else if (value == 'Delete') {
//                                      // BlocProvider.of<ProductBloc>(context)
//                                      //     .add(ProductEvent.deleteProductEvent(state.prouctModel![index].id));
//                                    }
//                                  }, itemBuilder: (BuildContext context) {
//                                    return {'Edit', 'Delete'}
//                                        .map((String choice) {
//                                      return PopupMenuItem<String>(
//                                        value: choice,
//                                        child: Row(
//                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
//                                          children: [
//                                            choice == 'Edit'
//                                                ? const Icon(Icons.edit)
//                                                : const Icon(Icons.delete),
//                                            Text(choice)
//                                          ],
//                                        ),
//                                      );
//                                    }).toList();
//                                  }))
//                            ],
//                          ),
//                        ),
//                      );
//                    },
//                    separatorBuilder: (context, index) =>
//                        const SizedBox(height: 10),
//                    // itemCount: state.prouctModel!.length,
//                    itemCount: 10,
//                    ),
//              // );
//            // }
//          // }),
//           ),
//           // body: Padding(
//           //   padding: const EdgeInsets.all(8.0),
//           //   child: BlocConsumer<ProductBloc, ProductState>(
//           //       listener: (context, state) {},
//           //       builder: (context, state) {
//           //         if (state.isLoading) {
//           //           return const Center(
//           //             child: CircularProgressIndicator(),
//           //           );
//           //         } else if (state.isGetAllProductHasError ||
//           //             state.isDeleteProductByIdhasError) {
//           //           return const Center(
//           //             child: Text("Oops! some error occured"),
//           //           );
//           //         } else {
//           //           return SizedBox(
//           //             height: size.height / 1.19,
//           //             child: ListView.separated(
//           //                 itemBuilder: (context, index) {
//           //                   if (state.prouctModel![index].name.length >= 20) {
//           //                     final name = state.prouctModel![index].name;
//           //                     productName = "${name.substring(0, 17)}...";
//           //                   } else {
//           //                     productName = state.prouctModel![index].name;
//           //                   }
//           //                   return Card(
//           //                     elevation: 10,
//           //                     child: InkWell(
//           //                       onTap: () {
//           //                         Navigator.push(
//           //                             context,
//           //                             MaterialPageRoute(
//           //                               builder: (context) => ProductDisplayScreen(
//           //                                 id: state.prouctModel![index].id,
//           //                               ),
//           //                             ));
//           //                       },
//           //                       onLongPress: () {
//           //                         showLongpressOptionsforProduct(
//           //                             ctx: context,
//           //                             indext: index,
//           //                             prdouctId: state.prouctModel![index].id);
//           //                       },
//           //                       child: Stack(
//           //                         children: [
//           //                           IconButton(
//           //                               onPressed: () {},
//           //                               icon: const Icon(
//           //                                 Icons.more,
//           //                                 color: Colors.red,
//           //                               )),
//           //                           Container(
//           //                             decoration: BoxDecoration(
//           //                                 color: Colors.white,
//           //                                 border: Border.all(
//           //                                     color: Colors.grey.shade400),
//           //                                 borderRadius: BorderRadius.circular(10)),
//           //                             height: size.height / 7,
//           //                             // width: 100,
//           //                             child: Row(
//           //                               children: [
//           //                                 kwidth10,
//           //                                 Container(
//           //                                   height: size.height / 9,
//           //                                   width: size.width / 4,
//           //                                   // color: Colors.blue,
//           //                                   decoration: BoxDecoration(
//           //                                       border: Border.all(
//           //                                           color: Colors.grey.shade400),
//           //                                       borderRadius:
//           //                                           BorderRadius.circular(10)),
//           //                                   child: ClipRRect(
//           //                                       borderRadius:
//           //                                           BorderRadius.circular(10),
//           //                                       child: Image(
//           //                                         image: NetworkImage(state
//           //                                             .prouctModel![index]
//           //                                             .imageUrl),
//           //                                         fit: BoxFit.cover,
//           //                                       )),
//           //                                 ),
//           //                                 kwidth15,
//           //                                 SizedBox(
//           //                                   width: size.width / 1.7,
//           //                                   child: Column(
//           //                                     crossAxisAlignment:
//           //                                         CrossAxisAlignment.start,
//           //                                     mainAxisAlignment:
//           //                                         MainAxisAlignment.spaceEvenly,
//           //                                     children: [
//           //                                       kheight10,
//           //                                       Text(
//           //                                         productName,
//           //                                         style: const TextStyle(
//           //                                             fontSize: 20,
//           //                                             fontWeight: FontWeight.bold),
//           //                                       ),
//           //                                       Text(
//           //                                           state.prouctModel![index].size),
//           //                                       Row(
//           //                                         mainAxisAlignment:
//           //                                             MainAxisAlignment
//           //                                                 .spaceBetween,
//           //                                         children: [
//           //                                           Text(
//           //                                             "₹${state.prouctModel![index].price.toString()}",
//           //                                             style: const TextStyle(
//           //                                                 fontSize: 18,
//           //                                                 fontWeight:
//           //                                                     FontWeight.w500),
//           //                                           ),
//           //                                           // kwidth40,
//           //                                           state.prouctModel![index]
//           //                                                       .quantity <=
//           //                                                   0
//           //                                               ? stockIndicator(
//           //                                                   clr: Colors.red,
//           //                                                   txt: "Out stock")
//           //                                               : stockIndicator(
//           //                                                   clr: Colors.green,
//           //                                                   txt: "In stock")
//           //                                         ],
//           //                                       ),
//           //                                       kheight10,
//           //                                     ],
//           //                                   ),
//           //                                 ),
//           //                               ],
//           //                             ),
//           //                           ),
//           //                           Positioned(
//           //                               right: 10,
//           //                               top: 10,
//           //                               child: PopupMenuButton<String>(
    
//           //                                   onSelected: (value) {
//           //                                 if (value == 'Edit') {
//           //                                   Navigator.push(
//           //                                     context,
//           //                                     MaterialPageRoute(
//           //                                       builder: (context) =>
//           //                                           EditProductScreen(
//           //                                               productId: state
//           //                                                   .prouctModel![index]
//           //                                                   .id),
//           //                                     ),
//           //                                   );
//           //                                 } else if (value == 'Delete') {
//           //                                   // BlocProvider.of<ProductBloc>(context)
//           //                                   //     .add(ProductEvent.deleteProductEvent(state.prouctModel![index].id));
//           //                                 }
//           //                               }, itemBuilder: (BuildContext context) {
//           //                                 return {'Edit', 'Delete'}
//           //                                     .map((String choice) {
//           //                                   return PopupMenuItem<String>(
//           //                                     value: choice,
//           //                                     child: Row(
//           //                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
//           //                                       children: [
//           //                                         choice == 'Edit'
//           //                                             ? const Icon(Icons.edit)
//           //                                             : const Icon(Icons.delete),
//           //                                         Text(choice)
//           //                                       ],
//           //                                     ),
//           //                                   );
//           //                                 }).toList();
//           //                               }))
//           //                         ],
//           //                       ),
//           //                     ),
//           //                   );
//           //                 },
//           //                 separatorBuilder: (context, index) =>
//           //                     const SizedBox(height: 10),
//           //                 itemCount: state.prouctModel!.length),
//           //           );
//           //         }
//           //       }),
//           );
//   }
// }
