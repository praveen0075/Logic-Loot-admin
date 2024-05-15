import 'package:flutter/material.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height,
                    width: size.width,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                          Color.fromARGB(255, 77, 87, 231),
                          Color.fromARGB(255, 237, 128, 243),
                        ])),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      height: size.height / 2.1,
                      width: size.width,
                      child: Form(
                        key: formKey,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              kheight25,
                              const Text(
                                "Welcome Back!",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Slabo27px",
                                  color: Color.fromARGB(255, 102, 62, 234),
                                ),
                              ),
                              kheight30,
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    AdminTextformFields.adminTextformField(
                                        txtContorller: nameController,errmsg: "Please Enter the Email"),
                                    kheight20,
                                    AdminTextformFields.adminPassTextformField(
                                        txtContorller: passController,errmsg: "Please Enter the password"),
                                  ],
                                ),
                              ),
                              kheight10,
                              Container(
                                width: size.width / 1.2,
                                height: size.height / 15,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: const LinearGradient(
                                        begin: Alignment.bottomLeft,
                                        end: Alignment.topRight,
                                        colors: [
                                          Color.fromARGB(255, 77, 87, 231),
                                          Color.fromARGB(255, 237, 128, 243),
                                        ])),
                                child: TextButton(
                                    onPressed: () {
                                      if (formKey.currentState!.validate()) {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  DashBoardScreen(),));
                                      }
                                    },
                                    child: const Text(
                                      "Submit",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
