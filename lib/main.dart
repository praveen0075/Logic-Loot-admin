import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/auth/auth_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/banner/banner_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/coupon/coupon_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/customer/customer_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/orders/orders_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product_by_id/product_by_id_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/login/login_screen.dart';
import 'package:logic_loot_admin/core/data/services/auth_services.dart';
import 'package:logic_loot_admin/core/data/services/banner_services.dart';
import 'package:logic_loot_admin/core/data/services/category_services.dart';
import 'package:logic_loot_admin/core/data/services/coupon_services.dart';
import 'package:logic_loot_admin/core/data/services/customer_services.dart';
import 'package:logic_loot_admin/core/data/services/order_services.dart';
import 'package:logic_loot_admin/core/data/services/product_services.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';
import 'package:logic_loot_admin/core/domain/model/response_model/get_productby_id_response_model.dart';

bool? log;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  log = await SharedPreffs.adminLoggedInorNot();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authRepo = AutheServices();
  final cateRepo = CategoryServices();
  final productRepo = ProductServices();
  final couponRepo = CouponServices();
  final customerRepo = CustomerServices();
  final ordersRepo = OrderServices();
  final bannerRepo = BannerServices();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(authRepo),
        ),
        BlocProvider<CategoryBloc>(
          create: (context) => CategoryBloc(cateRepo),
        ),
        BlocProvider<ProductBloc>(
          create: (context) => ProductBloc(productRepo),
        ),
        BlocProvider<CouponBloc>(
          create: (context) => CouponBloc(couponRepo),
        ),
        BlocProvider<CustomerBloc>(
          create: (context) => CustomerBloc(customerRepo),
        ),
        BlocProvider<OrdersBloc>(
          create: (context) => OrdersBloc(ordersRepo),
        ),
        BlocProvider<BannerBloc>(
          create: (context) => BannerBloc(bannerRepo),
        ),
        BlocProvider<ProductByIdBloc>(
          create: (context) => ProductByIdBloc(productRepo),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              // useMaterial3: true,
              ),
          home: log == true ? const DashBoardScreen() : const LoginScreen()),
    );
  }
}
