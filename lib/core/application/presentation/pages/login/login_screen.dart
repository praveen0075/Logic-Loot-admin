import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/auth/auth_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/login/animations/lottie.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/colors.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/kbutton_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/textformfield_for_adding.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  bool show = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  LottieAnime.loginLog(size),
                  kheight25,
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Slabo27px",
                      color: appcolorblue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        AdminTextformFields.adminTextformField(
                            txtContorller: emailController,
                            errmsg: "Please Enter the Email"),
                        kheight20,
                        TextFormField(
                            obscureText: show,
                            controller: passController,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_open_rounded,
                                  color: appcolorblue,
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        show = !show;
                                      });
                                    },
                                    child: show
                                        ? const Icon(
                                            Icons.visibility_off_outlined,
                                            color: appcolorblue)
                                        : const Icon(Icons.visibility_outlined,
                                            color: appcolorblue),
                                  ),
                                ),
                                hintText: 'Password',
                                border: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)))),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              } else {
                                return null;
                              }
                            })
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
                          bgColor: snackBarFail,
                        );
                      } else if (state.isLogInSuccess) {
                        snackBarWidget(
                          context: context,
                          msg: state.message ?? "Successfully verified",
                          bgColor: snackBarSuccess,
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
                        return KbuttonWidget(
                            labeltxt: "Sign In",
                            size: size,
                            formKey: formKey,
                            emailController: emailController,
                            passController: passController);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
