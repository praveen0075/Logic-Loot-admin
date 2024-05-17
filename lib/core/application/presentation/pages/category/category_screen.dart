import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/show_bottom_sheet.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/category/widgets/showdialogu_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';

final formkeycat = GlobalKey<FormState>();
   TextEditingController categoryNameController = TextEditingController();
    TextEditingController categoryDescriptionController =
        TextEditingController();

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
 
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        centerTitle: true,
      ),
      drawer: const SideBarWidget(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialoguWidget(context, size, categoryNameController,
                categoryDescriptionController);
          },
          child: const Icon(Icons.add)),
      body: ListView.separated(
        itemCount: 10,
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
            title: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Category",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
