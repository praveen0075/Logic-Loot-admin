import 'package:flutter/material.dart';

class TxtEdtControllers {
  static String? productName;
  static int? productPrice;
  static int? productQuanity;
  static String? productSpec;
  static String? productDesc;
  
  TxtEdtControllers();

  static final addCategoryNameController = TextEditingController();

  static final addCategoryDescriptioncontroller = TextEditingController();

  static final TextEditingController productNameController =
      TextEditingController();
  static final TextEditingController productPriceController =
      TextEditingController();
  static final TextEditingController productQuantityController =
      TextEditingController();
  static final TextEditingController productCategoryController =
      TextEditingController();
  static final TextEditingController productSizeController =
      TextEditingController();
  static final TextEditingController productSpecController =
      TextEditingController();
  static final TextEditingController productDescriptionController =
      TextEditingController();

  static final TextEditingController editproductNameController =
      TextEditingController(text: productName);
  static final TextEditingController editproductPriceController =
      TextEditingController(text: productPrice.toString());
  static final TextEditingController editproductQuantityController =
      TextEditingController(text: productQuanity.toString());
  static final TextEditingController editproductCategoryController =
      TextEditingController();
  static final TextEditingController editproductSizeController =
      TextEditingController();
  static final TextEditingController editproductSpecController =
      TextEditingController(text: productSpec);
  static final TextEditingController editproductDescriptionController =
      TextEditingController(text:  productDesc);
}
