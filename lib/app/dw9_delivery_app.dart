import 'package:dw9_delivery_app/app/core/ui/theme/theme_confi.dart';
import 'package:dw9_delivery_app/app/pages/home/home_router.dart';
import 'package:dw9_delivery_app/app/pages/splash/splasn_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/provider/application_binding.dart';

class Dw9DeliveryApp extends StatelessWidget {

  const Dw9DeliveryApp({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return ApplicationBinding(
         child: MaterialApp(
         title: 'Deliver App',
         theme: ThemeConfi.theme,
         routes: {
              '/': (context) =>  const SplasnPage(),
              '/home': (context) => HomeRouter.page,
            },  
          ),
       );
  }
}