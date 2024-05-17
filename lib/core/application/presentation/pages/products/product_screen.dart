import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/show_bottom_sheet.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/add_product_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/product_display_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/products/widgets/longpress_options.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // context.read<ProductBloc>().add(ProductEvent.getAllProductEvent());
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
        child: ListView.separated(
            itemBuilder: (context, index) => Card(
                  elevation: 10,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductDisplayScreen(),));
                    },
                    onLongPress: (){
                      showLongpressOptionsforProduct(ctx: context,indext: index);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade400),
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
                                border: Border.all(color: Colors.grey.shade400),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          kwidth15,
                          SizedBox(
                            width: size.width / 1.7,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                kheight10,
                                const Text(
                                  "Azuze Tuff gaming",
                                  style: TextStyle(
                                      fontSize: 20, fontWeight: FontWeight.bold),
                                ),
                                const Text("512gb"),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "₹45000",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    // kwidth40,
                                    Container(
                                      height: 30,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Center(child: Text("In stock",style: TextStyle(color: Colors.white),)),
                                    ),
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
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: 10),
      ),
    );
  }
}
