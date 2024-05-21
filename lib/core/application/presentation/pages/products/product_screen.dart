import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/add_product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_display_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/widgets/longpress_options.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductBloc>(context)
        .add(const ProductEvent.getAllProductEvent());
  }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   BlocProvider.of<ProductBloc>(context)
  //       .add(const ProductEvent.getAllProductEvent());
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // context.read<ProductBloc>().add(const ProductEvent.getAllProductEvent());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Products"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: const SideBarWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddProductScreen(),
              ));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocConsumer<ProductBloc, ProductState>(
            listener: (context, state) {
            },
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.isGetAllProductHasError || state.isDeleteProductByIdhasError) {
                return const Center(
                  child: Text("Oops! some error occured"),
                );
              } else {
                return ListView.separated(
                    itemBuilder: (context, index) => Card(
                          elevation: 10,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                         ProductDisplayScreen(id: state.prouctModel![index].id,),
                                  ));
                            },
                            onLongPress: () {
                              showLongpressOptionsforProduct(
                                  ctx: context,
                                  indext: index,
                                  prdouctId: state.prouctModel![index].id);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(10)),
                              height: size.height / 7,
                              width: 100,
                              child: Row(
                                children: [
                                  kwidth10,
                                  Container(
                                    height: size.height / 9,
                                    width: size.width / 4,
                                    // color: Colors.blue,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade400),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(
                                          image: NetworkImage(state
                                              .prouctModel![index].imageUrl),
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
                                          state.prouctModel![index].name,
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(state.prouctModel![index].size),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "₹${state.prouctModel![index].price.toString()}",
                                              style: const TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            // kwidth40,
                                            state.prouctModel![index]
                                                        .quantity <=
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
                          ),
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(height: 10),
                    itemCount: state.prouctModel!.length);
              }
            }),
      ),
    );
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
}
