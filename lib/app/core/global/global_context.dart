import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class GlobalContext {
  late final GlobalKey<NavigatorState> _navigatorkey;

  static GlobalContext? _instance;
  // Avoid self isntance
  GlobalContext._();

  static GlobalContext get i {
    _instance ??= GlobalContext._();
    return _instance!;
  }

  set navigatorkey(GlobalKey<NavigatorState> key) => _navigatorkey = key;

  Future<void> loginExpire() async {
    final sp = await SharedPreferences.getInstance();
    sp.clear();
    showTopSnackBar(
      _navigatorkey.currentState!.overlay!,
      const CustomSnackBar.error(
        message: 'Login Expirado, clique na sacola novamente',
        backgroundColor: Colors.black,
      ),
    );
    _navigatorkey.currentState!.popUntil(ModalRoute.withName('/home'));
  }
}
