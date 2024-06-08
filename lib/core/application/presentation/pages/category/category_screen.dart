import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/add_categories_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/add_category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/category_tile_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   // context.read<>().add
    // });
    // context.read<CategoryBloc>().add(const CategoryEvent.getCategory());

    var size = MediaQuery.of(context).size;
    print("buiildd");
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Category")),
      drawer: const SideBarWidget(),
      floatingActionButton: FloatingActionButton(
          backgroundColor: appcolorRose,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddCategoryScreen(),
                ));
          },
          child: const Icon(Icons.add)),
      // body: BlocConsumer<CategoryBloc, CategoryState>(
      //   listener: (context, state) {
      //     // if(state.error){
      //     //   snackBarWidget(context: context, msg: state.messag??'Something went wrong', bgColor: Colors.red);
      //     // }else if (state.isLoaded){
      //     //   snackBarWidget(context: context, msg: state.messag??"Success", bgColor: Colors.)
      //     // }
      //   },
      //   builder: (context, state) {
      //     if (state.isLoading) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     } else if (state.error) {
      //       return const Center(
      //         child: Text("Something Went Wrong!"),
      //       );
      //     } else {
      //       return CategoryListWidget(
      //         stt: state,
      //       );
      //     }
      //   },
      // )
      body: const CategoryListWidget(
          // stt: state,
          ),
    );
  }
}
