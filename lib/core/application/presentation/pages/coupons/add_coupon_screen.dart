import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:logic_loot_admin/core/application/bloc/coupon/coupon_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/add_button.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/add_textformfield_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/appbar_widget.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/snackbar_widget.dart';
import 'package:logic_loot_admin/core/domain/model/body_model/coupon_body_model.dart';

class AddCouponScreen extends StatefulWidget {
  const AddCouponScreen({super.key});

  @override
  State<AddCouponScreen> createState() => _AddCouponScreenState();
}

TextEditingController validityDateController = TextEditingController();
TextEditingController couponCodecontroller = TextEditingController();
TextEditingController couponAmountController = TextEditingController();
TextEditingController couponLimitContoller = TextEditingController();
final formkeyCoupon = GlobalKey<FormState>();

class _AddCouponScreenState extends State<AddCouponScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Add Coupons",
            )),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formkeyCoupon,
            child: BlocConsumer<CouponBloc, CouponState>(
              listener: (context, state) {
                if (state.isAddCouponHasError) {
                  snackBarWidget(
                      context: context,
                      msg: state.message ?? "failed to add coupon",
                      bgColor: Colors.red);
                } else if (state.isAddCouponSuccess) {
               

                  snackBarWidget(
                      context: context,
                      msg: state.message ?? "Coupon adding success",
                      bgColor: Colors.green);
                       context
                      .read<CouponBloc>()
                      .add(const CouponEvent.getCoupons());
                  validityDateController.clear();
                  couponCodecontroller.clear();
                  couponAmountController.clear();
                  couponLimitContoller.clear();
                   
                  Navigator.pop(context);
                   
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      kheight20,
                      AddTextFormFieldWidget(
                          txt: "Coupon Code",
                          cntrlr: couponCodecontroller,
                          errmsg: "Please enter the code"),
                      kheight15,
                      AddTextFormFieldWidget(
                          txt: "Amount",
                          cntrlr: couponAmountController,
                          errmsg: "Amount is required"),
                      kheight15,
                      AddTextFormFieldWidget(
                        txt: "Usage limit",
                        cntrlr: couponLimitContoller,
                        errmsg: "Please enter the limit",
                      ),
                      kheight15,
                      TextFormField(
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        controller: validityDateController,
                        readOnly: true,
                        decoration: InputDecoration(
                            hintText: "Select Validity",
                            suffixIcon: IconButton(
                                onPressed: () async {
                                  DateTime? dateValue = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime.now(),
                                      lastDate: DateTime(2030)
                                          .add(const Duration(days: 365)));
                                  final formattedDate =
                                      DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
                                          .format(dateValue!.toUtc());

                                  setState(() {
                                    validityDateController.text = formattedDate;
                                  });
                                },
                                icon: const Icon(Icons.calendar_month_rounded)),
                            focusedBorder: const OutlineInputBorder(),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor:
                                const Color.fromARGB(255, 212, 210, 234)),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Select the usage validity";
                          } else {
                            return null;
                          }
                        },
                      ),
                      kheight20,
                      Container(
                        height: size.height / 17,
                        width: size.width,
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
                            if (formkeyCoupon.currentState!.validate()) {
                              final amount =
                                  int.parse(couponAmountController.text);
                              final usageLimit =
                                  int.parse(couponLimitContoller.text);
                              final model = AddCouponBody(
                                  amount: amount,
                                  code: couponCodecontroller.text,
                                  type: "fixed",
                                  usageLimit: usageLimit,
                                  validUntil: validityDateController.text);

                              context.read<CouponBloc>().add(
                                  CouponEvent.addCoupons(couponModel: model));
                            }
                          },
                          txt: "Add Coupon",
                        ),
                      ),
                    ],
                  ),
                );
                // }
              },
            ),
          ),
        ));
  }
}

class CouponTextformField extends StatelessWidget {
  const CouponTextformField(
      {super.key,
      required this.txt,
      required this.cntrlr,
      required this.errmsg});

  final String txt;
  final TextEditingController cntrlr;
  final String errmsg;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: cntrlr,
      decoration: InputDecoration(
          labelText: txt,
          enabled: true,
          focusedBorder: const OutlineInputBorder(),
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color.fromARGB(255, 212, 210, 234)),
      validator: (value) {
        if (value!.isEmpty) {
          return errmsg;
        } else {
          return null;
        }
      },
    );
  }
}
