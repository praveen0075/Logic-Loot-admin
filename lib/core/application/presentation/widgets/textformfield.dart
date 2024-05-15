import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class AdminCommonTextFormField extends StatelessWidget {
//   const AdminCommonTextFormField(
//       {super.key,
//       required this.phnController,
//       required this.label,
//       required this.errormsg});
//   final TextEditingController phnController;
//   final String label;
//   final String errormsg;

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       decoration: InputDecoration(hintText: label),
//     );
//   }
// }

class AdminTextformFields {
  static TextFormField adminTextformField({TextEditingController? txtContorller,String? errmsg}) {
    return TextFormField(
      controller: txtContorller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        //  errorStyle: TextStyle(height: 0),
          prefixIcon: Icon(
            CupertinoIcons.person_alt_circle_fill,
            color: Color.fromARGB(255, 77, 87, 231),
          ),
          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(15)),
          //   borderSide: BorderSide(color: Colors.teal)
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.all(Radius.circular(15)),
          //       borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 77, 87, 231)),
          //     ),
          // errorBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(20))),
          hintText: 'Admin Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          )),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errmsg;
        } else {
          return null;
        }
      },
    );
  }


  static TextFormField adminPassTextformField({TextEditingController? txtContorller,String? errmsg}) {
    return TextFormField(
      obscureText: true,
      controller: txtContorller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      
      decoration: const InputDecoration(
        // errorStyle: TextStyle(height: 0),
          prefixIcon: Icon(
            Icons.lock_open_rounded,
            color: Color.fromARGB(255, 77, 87, 231),
          ),
          suffixIcon: Icon(Icons.visibility_rounded,color:Color.fromARGB(255, 77, 87, 231)),
          //  enabledBorder: OutlineInputBorder(
          //     borderRadius: BorderRadius.all(Radius.circular(15)),
          //         borderSide: BorderSide(width: 2, color: Color.fromARGB(255, 77, 87, 231)),
          //       ),
          hintText: 'Password',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)))),
        // controller: ,
           validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a password';
          } else {
            return null;
          }}
    );
  }
}
