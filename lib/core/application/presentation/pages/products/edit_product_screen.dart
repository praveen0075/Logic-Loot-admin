
import 'package:dotted_border/dotted_border.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield_for_editing.dart';

final TextEditingController productNameController = TextEditingController();
final TextEditingController productPriceController = TextEditingController();
final TextEditingController productQuantityController = TextEditingController();
final TextEditingController productCategoryController = TextEditingController();
final TextEditingController productSizeController = TextEditingController();
final TextEditingController productSpecController = TextEditingController();  
final TextEditingController productDescriptionController = TextEditingController();
final formKey = GlobalKey<FormState>();

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Product"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              kheight20,
              DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(20),
                strokeWidth: 1.3,
                // dashPattern: [10,18],
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  height: size.height / 4.7,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(20),
                    // border: Border.all(color: black)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.image_outlined,
                        size: 29,
                      ),
                      kheight10,
                      Text(
                        "Tap here to add an image",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),              ),
              ),
              kheight20,
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    AdminTextformFieldsForEdit.textFromFieldForEdit(
                        cntrlr: productNameController,
                        errormsg: "Name is required",
                        name: "Product Name"),
                    kheight10,
                    AdminTextformFieldsForEdit.textFromFieldForEdit(
                        cntrlr: productPriceController,
                        errormsg: "Enter the Price",
                        name: "Price (eg:45000)"),
                    kheight10,
                    AdminTextformFieldsForEdit.textFromFieldForEdit(
                        cntrlr: productQuantityController,
                        errormsg: "Name is required",
                        name: "Quantity"),
                    kheight10,
                    DropDownTextField(
                      // controller: productCategoryController ,
                      dropdownColor: Colors.white,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      dropDownIconProperty: IconProperty(icon: Icons.category_outlined),
                      textFieldDecoration: InputDecoration(
                        hintText: "Select Category",
                         hintStyle: const TextStyle(color: black),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      searchDecoration: const InputDecoration(
                        hintText: "Search here..",
                       
                      ),
                      dropdownRadius: 2,
                      enableSearch: true,
                      initialValue: "Select Category",
                      clearOption: true,
                      dropDownList: const [
                        DropDownValueModel(name: 'name1', value: "value1"),
                        DropDownValueModel(
                            name: 'name2',
                            value: "value2"),
                        DropDownValueModel(name: 'name3', value: "value3"),
                        DropDownValueModel(
                            name: 'name4',
                            value: "value4"),
                        DropDownValueModel(name: 'name5', value: "value5"),
                        DropDownValueModel(name: 'name6', value: "value6"),
                        DropDownValueModel(name: 'name7', value: "value7"),
                        DropDownValueModel(name: 'name8', value: "value8")
                      ],
                      onChanged: (value){
          
                      },
                    ),
                    kheight10,
                    DropDownTextField(
                      dropdownColor: Colors.white,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      dropDownIconProperty: IconProperty(icon: Icons.navigate_next),
                      textFieldDecoration: InputDecoration(
                        hintText: "Select Product Size",
                         hintStyle: const TextStyle(color: black),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                        )
                      ),
                      searchDecoration: const InputDecoration(
                        hintText: "Search here..",
                      
                      ),
                      dropdownRadius: 2,
                      enableSearch: true,
                      initialValue: "Select Category",
                      clearOption: true,
                      dropDownList: const [
                        DropDownValueModel(name: '128gb', value: "128gb"),
                        DropDownValueModel(
                            name: '256gb',
                            value: "256gb"),
                        DropDownValueModel(name: '512gb', value: "512gb"),
                        DropDownValueModel(
                            name: '1tb',
                            value: "1tb"),
                      ],
                      onChanged: (value){},
                    ),
                    kheight10,
                    AdminTextformFieldsForEdit.descriptionField(errmsg: "Sepcification is required",name: "Specifications",mxLine: 3,cntrlr: productSpecController),
                    kheight10,
                    AdminTextformFieldsForEdit.descriptionField(errmsg: "Descritpion is required",name: "Description",mxLine: 5,cntrlr: productDescriptionController),
                    kheight10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          style: const ButtonStyle(),
                          onPressed: (){
                          
                          }, child: const Text("Clear",style: TextStyle(color: Colors.red,fontSize: 20),)),
                        TextButton(onPressed: (){
                          if(formKey.currentState!.validate()){
                            
                          }
                        }, child: const Text("Submit ",style: TextStyle(color: appcolorblue,fontSize: 20),)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
