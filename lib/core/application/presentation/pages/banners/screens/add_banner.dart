import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:logic_loot_admin/core/application/bloc/banner/banner_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/add_button.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';

class AddBannerScreen extends StatefulWidget {
  const AddBannerScreen({super.key});

  @override
  State<AddBannerScreen> createState() => _AddBannerScreenState();
}

class _AddBannerScreenState extends State<AddBannerScreen> {
  File? _image;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBarWidget(
            title: "Add Banner",
            prIcon: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  context.read<BannerBloc>().add(const BannerEvent.getBanner());
                },
                icon: const Icon(Icons.arrow_back)),
          )),
      body: Center(
        child: BlocConsumer<BannerBloc, BannerState>(
          listener: (context, state) {
            if (state is ErrorSt) {
              snackBarWidget(
                  context: context, msg: state.errormsg, bgColor: Colors.red);
            } else if (state is Loaded) {
              _image = null;
              snackBarWidget(
                  context: context,
                  msg: state.successmsg,
                  bgColor: Colors.green);
            }
          },
          builder: (context, state) {
            if (state is Loading) {
              return const CircularProgressIndicator();
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(20),
                    strokeWidth: 1.3,
                    child: InkWell(
                      onTap: () async {
                        final picker = ImagePicker();
                        final pickedFile =
                            await picker.pickImage(source: ImageSource.gallery);

                        if (pickedFile != null) {
                          setState(() {
                            _image = File(pickedFile.path);
                          });
                        } else {}
                      },
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        height: size.height / 4.7,
                        width: size.width / 1.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: _image == null
                            ? const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_photo_alternate_outlined,
                                    size: 29,
                                  ),
                                  kheight10,
                                  Text(
                                    "Tap here to add an image",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              )
                            : Image(
                                image: FileImage(_image!),
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
                  kheight10,
                  Container(
                      height: size.height / 17,
                      width: size.width / 1.3,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.topRight,
                              colors: [
                                Color.fromARGB(255, 77, 87, 231),
                                Color.fromARGB(255, 237, 128, 243),
                              ])),
                      child: AddButton(
                          onpressed: () {
                            if (_image == null) {
                              snackBarWidget(
                                  context: context,
                                  msg: "Please select an image",
                                  bgColor: Colors.red);
                            } else {
                              context.read<BannerBloc>().add(
                                  BannerEvent.addBanner(imageUrl: _image!));
                            }
                          },
                          txt: "Add Banner"))
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
