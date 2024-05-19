import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logic_loot_admin/core/application/presentation/utils/constants/space_constants.dart';


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
        appBar: AppBar(
            // backgroundColor: appcolorRose,
            title: const Text(
              "Add coupons",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: formkeyCoupon,
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  kheight30,
                   CouponTextformField(txt: "Coupon Code",cntrlr: couponCodecontroller,errmsg: "Please enter the code"),
                  kheight15,
                   CouponTextformField(txt: "Amount",cntrlr: couponAmountController,errmsg: "Amount is required"),
                  kheight15,
                   CouponTextformField(txt: "Usage limit",cntrlr: couponLimitContoller,errmsg: "Please enter the limit",),
                  kheight15,
                  TextFormField(
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
                                  lastDate:
                                      DateTime(2030).add(const Duration(days: 365)));
                                      final formatedDate = DateFormat("dd-MM-yyyy").format(dateValue!);
                                      setState(() {
                                        validityDateController.text = formatedDate;
                                      });
                            },
                            icon:const Icon(Icons.calendar_month_rounded)),
                          
                        focusedBorder: const OutlineInputBorder(),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 212, 210, 234)),
                        validator: (value) {
                          if(value!.isEmpty){
                            return "Please Select the usage validity";
                          }else{
                            return null;
                          }
                        },
                  ),
                  kheight20,
                  Container(
                    height: size.height/17,
                    width: size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    gradient:  LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                    colors: [
                                      Color.fromARGB(255, 77, 87, 231),
                                      Color.fromARGB(255, 237, 128, 243),
                                    ])
                    
                    ),
                    child: TextButton(onPressed: (){
                      if(formkeyCoupon.currentState!.validate()){
              
                      }
                    }, child: const Text("Click Here To Add Coupon",style: TextStyle(color: Colors.white),)),
                  ),
              ],
              ),
            ),
          ),
        ));
  }
}

class CouponTextformField extends StatelessWidget {
  const CouponTextformField({super.key, required this.txt, required this.cntrlr,required this.errmsg});

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
            if(value!.isEmpty){
              return errmsg;
            }else{
              return null;
            }
          },
    );
  }
}
