import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';

class Buttons{
   static SizedBox saveButton(
      {required BuildContext context, required void Function()? onPressed}) {
    return SizedBox(
        height: 50,
        child: OutlinedButton(
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(appcolorblue),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                side:
                    MaterialStatePropertyAll(BorderSide(color: appcolorblue))),
            onPressed: onPressed,
            child: const Text("Submit")));
  }

  static   SizedBox clearButton({required void Function()? onPressed}) {
    return SizedBox(
                                  height: 50,
                                  child: OutlinedButton(
                                      style: const ButtonStyle(
                                          side: MaterialStatePropertyAll(
                                              BorderSide(
                                                  color: appcolorblue)),
                                          foregroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.red)),
                                      onPressed: onPressed,
                                      child: const Text("Clear")),
                                );
  } 
}