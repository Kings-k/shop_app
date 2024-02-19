import 'package:flutter/material.dart';
import 'package:shop_app/screens/splash/splash_load_ap.dart';
import 'routes.dart';
import 'theme.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget 
{
  const MyApp({super.key});
  // widget root .
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cero Uzisha',
      theme: AppTheme.lightTheme(context),
      initialRoute: splash_load.routeName,
      routes: routes,
    );
  }
}