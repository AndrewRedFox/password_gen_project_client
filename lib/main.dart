import 'package:flutter/material.dart';
import 'package:password_gen_project/theme/app_size_layout.dart';
import 'package:password_gen_project/widgets/list_of_password/list_of_password.dart';
import 'widgets/auth/auth_widget.dart';
import 'widgets/register/register_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    final _mediaQuery = MediaQuery.of(context);
    AppSizeLayout.width = _mediaQuery.size.width;
    AppSizeLayout.height = _mediaQuery.size.height;

    return MaterialApp(
      title: 'PASSGEN',
      theme: ThemeData(       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/auth':(context) => AuthWidget(),
        '/register':(context) => RegisterWidget(),
        '/listOfPassword':(context) => ListOfPassword(),
      },
      initialRoute: '/auth',
    );
  }
}