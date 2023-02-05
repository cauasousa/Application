import 'package:dw9_delivery_app/app/core/global/global_context.dart';
import 'package:dw9_delivery_app/app/core/ui/theme/theme_config.dart';

import 'package:dw9_delivery_app/app/pages/auth/login/login_page.dart';
import 'package:dw9_delivery_app/app/pages/auth/login/login_router.dart';
import 'package:dw9_delivery_app/app/pages/auth/login/login_state.dart';
import 'package:dw9_delivery_app/app/pages/auth/register/register_page.dart';
import 'package:dw9_delivery_app/app/pages/auth/register/register_router.dart';
import 'package:dw9_delivery_app/app/pages/home/home_router.dart';
import 'package:dw9_delivery_app/app/pages/order/order_completed_page.dart';
import 'package:dw9_delivery_app/app/pages/order/order_page.dart';
import 'package:dw9_delivery_app/app/pages/order/order_router.dart';
import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_router.dart';

import 'package:dw9_delivery_app/app/pages/home/home_router.dart';

import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/provider/application_binding.dart';

class Dw9DeliveryApp extends StatelessWidget {
  final _navkey = GlobalKey<NavigatorState>();

  //const Dw9DeliveryApp({ Key? key }) : super(key: key);
  Dw9DeliveryApp({super.key}){
    
    GlobalContext.i.navigatorkey = _navkey;
  }

   @override
   Widget build(BuildContext context) {
       return ApplicationBinding(
         child: MaterialApp(
         title: 'Deliver App',
         theme: ThemeConfig.theme,
         navigatorKey: _navkey,
         routes: {
              '/': (context) =>  const SplashPage(),
              '/home': (context) => HomeRouter.page,
              '/productDetail': (context) => ProductDetailRouter.page,
              '/auth/login':(context) => LoginRouter.page,
              '/auth/register':(context) => RegisterRouter.page,
              '/order':(context) => OrderRouter.page,
              '/order/completed':(context) => const OrderCompletedPage(),

            },  
          ),
       );
  }
}