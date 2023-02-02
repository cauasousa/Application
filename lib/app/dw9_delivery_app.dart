import 'package:dw9_delivery_app/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery_app/app/pages/home/home_router.dart';
import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'core/provider/application_binding.dart';

class Dw9DeliveryApp extends StatelessWidget {

  const Dw9DeliveryApp({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return ApplicationBinding(
         child: MaterialApp(
         title: 'Deliver App',
         theme: ThemeConfig.theme,
         routes: {
              '/': (context) =>  const SplashPage(),
              '/home': (context) => HomeRouter.page,
            },  
          ),
       );
  }
}