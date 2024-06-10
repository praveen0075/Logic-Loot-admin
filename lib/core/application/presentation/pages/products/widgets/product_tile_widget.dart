import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/edit_product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_display_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class ProductTileWidget extends StatelessWidget {
  const ProductTileWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    String productName;
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.getAllProductEvent());
    return MultiBlocListener(
      listeners: [
        BlocListener<ProductBloc, ProductState>(
          listener: (context, state) {
            if (state is DeleteFailure) {
              context
                  .read<ProductBloc>()
                  .add(const ProductEvent.getAllProductEvent());
              snackBarWidget(
                  context: context, msg: state.errormsg, bgColor: Colors.red);
            } else if (state is DeleteSuccess) {
              context
                  .read<ProductBloc>()
                  .add(const ProductEvent.getAllProductEvent());
              snackBarWidget(
                  context: context,
                  msg: state.successmsg,
                  bgColor: Colors.green);
            }
          },
        )
      ],
      child: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is Success) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: size.height / 1.19,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      if (state.products[index].name.length >= 20) {
                        final name = state.products[index].name;
                        productName = "${name.substring(0, 17)}...";
                      } else {
                        productName = state.products[index].name;
                      }
                      return Card(
                        elevation: 10,
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductDisplayScreen(
                                    id: state.products[index].id,
                                  ),
                                ));
                          },
                          onLongPress: () {
                            // showLongpressOptionsforProduct(
                            //     ctx: context,
                            //     indext: index,
                            //     prdouctId: state.prouctModel![index].id);
                          },
                          child: Stack(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.more,
                                    color: Colors.red,
                                  )),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border:
                                        Border.all(color: Colors.grey.shade400),
                                    borderRadius: BorderRadius.circular(10)),
                                height: size.height / 7,
                                child: Row(
                                  children: [
                                    kwidth10,
                                    Container(
                                      height: size.height / 9,
                                      width: size.width / 4,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.grey.shade400),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image(
                                            image: NetworkImage(
                                                state.products[index].imageUrl),
                                            fit: BoxFit.cover,
                                          )),
                                    ),
                                    kwidth15,
                                    SizedBox(
                                      width: size.width / 1.7,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          kheight10,
                                          Text(
                                            productName,
                                            style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(state.products[index].size),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "₹${state.products[index].price.toString()}",
                                                style: const TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              kwidth40,
                                              state.products[index].quantity <=
                                                      0
                                                  ? stockIndicator(
                                                      clr: Colors.red,
                                                      txt: "Out stock")
                                                  : stockIndicator(
                                                      clr: Colors.green,
                                                      txt: "In stock")
                                            ],
                                          ),
                                          kheight10,
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  right: 10,
                                  top: 10,
                                  child: PopupMenuButton<String>(
                                      onSelected: (value) {
                                    if (value == 'Edit') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              EditProductScreen(
                                                  productId:
                                                      state.products[index].id),
                                        ),
                                      );
                                    } else if (value == 'Delete') {
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
                                                        context
                                                            .read<ProductBloc>()
                                                            .add(ProductEvent
                                                                .deleteProductByid(
                                                                    productId: state
                                                                        .products[
                                                                            index]
                                                                        .id));
                                                        Navigator.pop(context);
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
                                    return {'Edit', 'Delete'}
                                        .map((String choice) {
                                      return PopupMenuItem<String>(
                                        value: choice,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            choice == 'Edit'
                                                ? const Icon(Icons.edit)
                                                : const Icon(Icons.delete),
                                            Text(choice)
                                          ],
                                        ),
                                      );
                                    }).toList();
                                  }))
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: state.products.length,
                  ),
                ));
          } else if (state is Errorst) {
            return Center(
              child: Text(state.errmsg),
            );
          } else {
            return const Center(
              child: Text("No data found"),
            );
          }
        },
      ),
    );
  }
}

Container stockIndicator({required Color clr, required String txt}) {
  return Container(
    height: 30,
    width: 70,
    decoration:
        BoxDecoration(color: clr, borderRadius: BorderRadius.circular(10)),
    child: Center(
        child: Text(
      txt,
      style: const TextStyle(color: Colors.white),
    )),
  );
}
