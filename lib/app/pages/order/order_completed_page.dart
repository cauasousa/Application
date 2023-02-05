import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

class OrderCompletedPage extends StatelessWidget {
  const OrderCompletedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.percentHeight(.2),
            ),
            Image.asset('assets/images/logo_rounded.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Pedido realizado com sucesso, em breve você receberá a confirmação do seu pedido',
              textAlign: TextAlign.center,
              style: context.textStyles.textExtraBold.copyWith(fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            DeliveryButton(
              width: context.percentWidth(.9),
              label: 'FECHAR',
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    ));
  }
}
