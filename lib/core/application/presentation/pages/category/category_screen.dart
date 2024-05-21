import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/add_category_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/show_bottom_sheet.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

// final formkeycat = GlobalKey<FormState>();
// TextEditingController categoryNameController = TextEditingController();
// TextEditingController categoryDescriptionController = TextEditingController();

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {

@override
  void initState() {
    super.initState();
    BlocProvider.of<CategoryBloc>(context).add(const CategoryEvent.getCategory());
  }

  @override
  Widget build(BuildContext context) {
    print("build--->");

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddCategoryScreen(),
                  ));
            },
            child: const Icon(Icons.add)),
        body: BlocConsumer<CategoryBloc, CategoryState>(
          listener: (context, state) {
            if(state.isDeleteCategoryhasErro){
              snackBarWidget(context: context, msg: state.messag??"Failed to Delete Category", bgColor: Colors.red);
            }else if(state.isDeleteCategorySuccess){
              snackBarWidget(context: context, msg: state.messag??"Category deleted Successfully", bgColor: Colors.green);
            }
          },
          builder: (context, state) {
            if(state.isLoading){
              return const Center(child: CircularProgressIndicator(),);
            }else if(state.isGetCategoryHasError == true){
              return const Center(child: Text("Something Went Wrong!"),); 
            }else{
            return CategoryListWidget(stt: state,);
            }

          },
        )

        //     BlocBuilder<CategoryBloc, CategoryState>(builder: (context, state) {
        //   if (state.isLoading) {
        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   } else if (state.isGetCategoryHasError) {
        //     return CategoryListWidget(state: state);
        //   } else {
        //     return state.isGEtCategorySuccess
        //         ? CategoryListWidget(state: state)
        //         : const Center(
        //             child: Text("Oops! somthing Went wrong"),
        //           );
        //   }
        // })
        );
  }
}

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.stt,
  });

  final CategoryState stt;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: stt.getallCategory!.length,
      // itemCount: 10,
      separatorBuilder: (context, index) => const Divider(),
      itemBuilder: (context, index) => InkWell(
        onLongPress: () {
          showOptions(
            ctx: context,
            indext: index,
            categoryId: stt.getallCategory![index].id
          );
        },
        child: ListTile(
          onTap: () {
            showDialog(
                context: context,
                builder: (context) =>  AlertDialog(
                      title: Text(stt.getallCategory![index].name),
                      content: Text(stt.getallCategory![index].description),
                    ));
          },
          leading: const Icon(
            Icons.blur_on_sharp,
            color: appcolorblue,
          ),
          title:  Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              stt.getallCategory![index].name,
              // "Category",
              style: const  TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
