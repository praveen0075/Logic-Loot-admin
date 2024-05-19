import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/add_category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/show_bottom_sheet.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';


final formkeycat = GlobalKey<FormState>();
TextEditingController categoryNameController = TextEditingController();
TextEditingController categoryDescriptionController = TextEditingController();

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   BlocProvider.of<CategoryBloc>(context)
    //       .add(const CategoryEvent.getCategory());
    // });
    // context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
    BlocProvider.of<CategoryBloc>(context).add(const CategoryEvent.getCategory());
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Categories"),
          centerTitle: true,
        ),
        drawer: const SideBarWidget(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // showDialoguWidget(context, size, categoryNameController,
                  // categoryDescriptionController);
              Navigator.push(context, MaterialPageRoute(builder: (context) => const AddCategoryScreen(),));
            },
            child: const Icon(Icons.add)),
        body: BlocBuilder<CategoryBloc, CategoryState>(
          builder: (context, state) { 
            if(state.isLoading){
              return const Center(child: CircularProgressIndicator(),);
            }else if(state.isGetCategoryHasError){
              return CategoryListWidget(state: state);
            }else{
              return state.isGEtCategorySuccess? CategoryListWidget(state: state) : const Center(child: Text("Oops! somthing Went wrong"),);;
            }
          }
        ));
  }
} 

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.state,
  });

  final CategoryState state;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: state.getallCategory!.length,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => InkWell(
        onLongPress: () {
          showOptions(
            ctx: context,
            indext: index,
            // onTapFuction:  showDialoguWidgetForEditCategory(
            //       ctx: context,
            //       size: size,
            //       categoryDescriptionController:
            //           categoryDescriptionController,
            //       categoryNameController: categoryNameController)
          );
        },
        child: ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) => const AlertDialog(
                      title: Text("Category"),
                      content: Text(
                          "akdsfkshdfkhkasjdlfjal;sjfl;jasl;j ajsdl;fjl;jasl;dfj;a ajsl;djfl;jasl;djf jls;jdfljlasdjf; asd asjd;fjlasjd;lf asjdlfjl;asjd;lf jasd;lfjl;asjdl;f asjjdl;fjl;asjdflj"),
                    ));
          },
          leading: const Icon(
            Icons.blur_on_sharp,
            color: appcolorblue,
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              state.getallCategory![index].name,
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
