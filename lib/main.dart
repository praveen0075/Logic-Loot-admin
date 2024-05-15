import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/auth/auth_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/category/category_bloc.dart';
import 'package:logic_loot_admin/core/application/bloc/product/product_bloc.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/dashboard/dashboard_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/pages/login/login_screen.dart';
import 'package:logic_loot_admin/core/application/presentation/widgets/sidebar_widget.dart';
import 'package:logic_loot_admin/core/data/services/auth_services.dart';
import 'package:logic_loot_admin/core/data/services/category_services.dart';
import 'package:logic_loot_admin/core/data/services/product_services.dart';
import 'package:logic_loot_admin/core/data/shared_preferances/shared_pref.dart';


bool? log;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  log = await SharedPreffs.adminLoggedInorNot();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final  authRepo = AutheServices();
  final  cateRepo = CategoryServices();
  final productRepo = ProductServices();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => AuthBloc(authRepo),),
        BlocProvider<CategoryBloc>(create: (context) => CategoryBloc(cateRepo),),
        BlocProvider<ProductBloc>(create: (context) => ProductBloc(productRepo),),
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