import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/showdialogu_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class CategoryListWidget extends StatefulWidget {
  const   CategoryListWidget({
    super.key,
    // required this.stt,
  });

  @override
  State<CategoryListWidget> createState() => _CategoryListWidgetState();
}

class _CategoryListWidgetState extends State<CategoryListWidget> {
  // final CategoryState stt;
  @override
  Widget build(BuildContext context) {
BlocProvider.of<CategoryBloc>(context)
        .add(const CategoryEvent.getCategory());    // return BlocConsumer<CategoryBloc, CategoryState>(
    //   listener: (context, state) {
    //      if(state is Errorst){
    //       snackBarWidget(context: context, msg: state.errmessage, bgColor: Colors.red);
    //     }else if(state is Success){
    //       snackBarWidget(context: context, msg: "", bgColor: Colors.green);
    //     }  
    //   },
      // builder: (context, state) {
        return MultiBlocListener(listeners: [
          BlocListener<CategoryBloc,CategoryState>(listener: (context, state){
            if(state is DeleteSucces){
              context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
              snackBarWidget(context: context, msg: "Category deleted", bgColor: Colors.green);
            // }else if (state is GetCategoryErrorst){
            //   snackBarWidget(context: context, msg: state.errmessage, bgColor: Colors.red);
            }
          },)
        ], child: BlocBuilder<CategoryBloc,CategoryState>(builder: (context, state) {
          if(state is CategoryLoading){
            return const Center(child: CircularProgressIndicator(),);
          }else if(state is GetCategorySuccess){
        return ListView.separated(
          itemCount: state.categories.length,
          separatorBuilder: (context, index) => kheight10,
          itemBuilder: (context, index) => InkWell(
            onLongPress: () {},
            child: ExpansionTile(
              trailing: PopupMenuButton<String>(
                onSelected: (value) async {
                  if (value == 'Edit') {
                  } else if (value == 'Delete') {
                    await showDialoguWidgetForDeleteCategory(
                        ctId: state.categories[index].id, ctx: context);
                  }
                },
                itemBuilder: (BuildContext context) {
                  return {'Delete'}.map((String choice) {
                    return PopupMenuItem<String>(
                      value: choice,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(
                            Icons.delete,
                            color: Colors.red,
                          ),
                          Text(
                            choice,
                            style: const TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    );
                  }).toList();
                },
              ),
              iconColor: appcolorblue,
              textColor: appcolorblue,
              leading: const Icon(
                Icons.category_outlined,
                size: 18,
              ),
              title: Text(
                state.categories[index].name,
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
              ),
              children: [
                ListTile(
                  onLongPress: () async {},
                  title: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      state.categories[index].description,
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
          }
          return const Center(child: Text("No Data Available"),);
      }));
    // );
  }
}
