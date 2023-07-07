import 'package:flutter/material.dart';
import '/ui/beranda.dart';
import '/ui/login.dart';
import '/helpers/user_info.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  print(token);
  runApp(MaterialApp(
    title: "Klinik Application",
    debugShowCheckedModeBanner: false,
    home: token == null ? Login() : Beranda(),
  ));
}
