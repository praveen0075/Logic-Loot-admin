import 'package:flutter/material.dart';


class AddButton extends StatelessWidget {
  const AddButton({
    super.key, 
    required this.onpressed, required this.txt,
  });
  
  final Function() onpressed;
  final String txt;



  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onpressed,
        child:  Text(
          txt,
          style: const TextStyle(color: Colors.white),
        ));
  }
}
