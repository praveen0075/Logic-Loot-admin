

import 'package:image_picker/image_picker.dart';

class CommonFunctions{
  static Future <XFile?>getImage()async{
    // final  ImagePicker picker = ImagePicker();
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    return image;
  }
}