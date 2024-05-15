import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // context.read<ProductBloc>().add(ProductEvent.getAllProductEvent());
    return Scaffold(
      appBar: AppBar(

      ),
      drawer: SideBarWidget(),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {
        //     Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => const AddProductScreen(),
        //         ));
        //   },
        //   child: const Icon(Icons.add),
        // ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: BlocConsumer<ProductBloc, ProductState>(
        //     listener: (context, state) {
        //       if(state.isGetAllProductHasError){
        //         print("Error occured");
        //       }else if(state.isGetAllProductSuccess){
        //         print("success");
        //       }
        //     },
        //     builder: (context, state) {
        //       if(state.isLoading){
        //          return SizedBox(
        //             height: size.height - 250,
        //             child: const Center(child: CircularProgressIndicator()));
        //       }else if(state.isGetAllProductSuccess){
        //       return ListView.separated(
        //           itemBuilder: (context, index) => Card(
        //                 child: SizedBox(
        //                   height: 150,
        //                   child: Row(
        //                     children: [
        //                       Padding(
        //                         padding: const EdgeInsets.all(8.0),
        //                         child: Container(
        //                           height: 100,
        //                           width: 100,
        //                           decoration:
        //                               BoxDecoration(border: Border.all()),
        //                           child: Image(image: NetworkImage(state.prouctModel!.products[index].imageUrl),fit: BoxFit.cover,),
        //                         ),
        //                       ),
        //                        Column(
        //                         crossAxisAlignment: CrossAxisAlignment.start,
        //                         mainAxisAlignment: MainAxisAlignment.center,
        //                         children: [
        //                           Text(state.prouctModel!.products[index].name),
        //                           Text(state.prouctModel!.products[index].size),
        //                           Text("₹${state.prouctModel!.products[index].price.toString()}"),
        //                           Text("Quantity : ${state.prouctModel!.products[index].quantity.toString()}")
        //                         ],
        //                       )
        //                     ],
        //                   ),
        //                 ),
        //               ),
        //           separatorBuilder: (context, index) => const SizedBox(
        //                 height: 10,
        //               ),
        //           itemCount: state.prouctModel!.products.length);
          
        //     }else{
        //       return Center(
        //         child: Text("Erorr"),
        //       );
        //     }
        //     }
        //   ),
        //   // child: GridView.builder(
        //   //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //   //       crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
        //   //   itemBuilder: (context, index) => Container(
        //   //     color: Colors.blue,
        //   //     child: Column(
        //   //       children: [
        //   //         Row(
        //   //           children: [
        //   //             Container(
        //   //               height: 100,
        //   //               width: 100,
        //   //               color: Colors.black,
        //   //             )
        //   //           ],
        //   //         )
        //   //       ],
        //   //     ),
        //   //   ),
        //   // ),
        // ));
    );
  }
}
