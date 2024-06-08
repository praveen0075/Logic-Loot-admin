import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/addproduct_response_model.dart';

class ProductDisplayScreen extends StatelessWidget {
  const ProductDisplayScreen({super.key, required this.id});

  final int id;

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<ProductBloc>(context)
        .add(ProductEvent.getProductById(productId: id));
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar:  PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBarWidget(
            prIcon: IconButton(onPressed: ()async{
              context.read<ProductBloc>().add(const ProductEvent.getAllProductEvent());
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>const ProductScreen(),), (route) => false);
            }, icon: const Icon(Icons.arrow_back)),
            title: "Product Details",
          )),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetProductByIdFailure) {
            return const Center(child: Text("Error loading product details"));
          } else if (state is GetProductByIdSuccess) {
            var product = state.productById;
            var productDetails =
                state.productDetails;
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    height: size.height / 3.5,
                    width: size.width / 1.2,
                    child: Image(
                      image: NetworkImage(product.imageurl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                kheight20,
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "₹${product.price} ",
                            style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        TextSpan(
                            text: product.offerprice > 0
                                ? "-${product.offerprice}%"
                                : "",
                            style: const TextStyle(
                                color: Colors.green, fontSize: 28)),
                      ])),
                      Divider(),
                      secondRow(txt: "Size", val: product.size),
                      secondRow(
                          txt: "Category",
                          val: product.category
                              .toString()), // Convert category to string or fetch the category name
                      secondRow(
                          txt: "Stock",
                          val: product.removed ? "Out of stock" : "In stock"),
                      divider,
                      const Text(
                        "Specification",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(productDetails.specification,
                          style: TextStyle(color: black)),
                      divider,
                      const Text(
                        "Description",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: "${product.name}: ",
                            style: TextStyle(
                                color: black,
                                fontSize: 15,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: productDetails.description,
                            style: TextStyle(color: black))
                      ])),
                    ],
                  ),
                ),
              ],
            );
          }else{
            return const Center(child: Text("No data found"),);
          }
        },
      ),
    );
  }

  Row secondRow({required String txt, required String val}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          val,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
