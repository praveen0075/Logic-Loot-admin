import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/auth/auth_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield_for_adding.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            // child: Column(

            //   children: [
            // Stack(
            //   children: [
            // Container(
            //   height: size.height,
            //   width: size.width,
            //   decoration: const BoxDecoration(
            //       gradient: LinearGradient(
            //           begin: Alignment.bottomLeft,
            //           end: Alignment.topRight,
            //           colors: [
            //         Color.fromARGB(255, 77, 87, 231),
            //         Color.fromARGB(255, 237, 128, 243),
            //       ])),
            //       child: Column(
            //         children: [
            //           kheight50,
            //           kheight20,
            //           Text("LOGIC LOOT",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            //           kheight20,
            //           Center(
            //             child: SizedBox(
            //               height: 200,
            //               // child: Lottie.asset("assets/animations/epoDKaHbLr.json")),
            //           ),
            //         ],
            //       ),
            // ),
            // Positioned(
            //   bottom: 0,
            // child:
            // Container(
            //   height: size.height / 3,
            // ),
            //  child:  Container(
            //     decoration: const BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.only(
            //             topLeft: Radius.circular(30),
            //             topRight: Radius.circular(30))),
            //     height: size.height,
            //     width: size.width,
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    height: size.height / 5,
                    width: size.width / 1.8,
                    // color: Colors.red,
                    child: Lottie.asset(
                        "assets/animations/Animation - 1715969672319.json",
                        fit: BoxFit.contain,
                        repeat: false),
                  ),
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

                  // kheight 10,
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        AdminTextformFields.adminTextformField(
                            txtContorller: emailController,
                            errmsg: "Please Enter the Email"),
                        kheight20,
                        AdminTextformFields.adminPassTextformField(
                            txtContorller: passController,
                            errmsg: "Please Enter the password"),
                      ],
                    ),
                  ),
                  kheight10,
                  BlocConsumer<AuthBloc, AuthState>(
                    listener: (context, state) {
                      if (state.isLogInhasError) {
                        snackBarWidget(
                          context: context,
                          msg: state.message ?? "Verification Failed",
                          bgColor: Colors.red,
                        );
                      } else if (state.isLogInSuccess) {
                        snackBarWidget(
                          context: context,
                          msg: state.message ?? "Successfully verified",
                          bgColor: Colors.green,
                        );
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DashBoardScreen(),
                            ));
                      }
                    },
                    builder: (context, state) {
                      if (state.isLoading) {
                        return const CircularProgressIndicator();
                      } else {
                        return Container(
                          width: size.width / 1.1,
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
                                  context.read<AuthBloc>().add(
                                      AuthEvent.logInReqEvent(
                                          email: emailController.text.trim(),
                                          password:
                                              passController.text.trim()));
                                }
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 19),
                              )),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        // ),
        // ],
        // ),
        // ],
        // ),
        // ),
      ),
    );
  }
}
