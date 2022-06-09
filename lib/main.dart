import 'package:flutter/material.dart';
import 'package:flutter_chat_app/module/myprovider.dart';
import 'package:flutter_chat_app/screens/login_page.dart';
import 'package:provider/provider.dart';
import 'screens/HomePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MyProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: context.watch<MyProvider>().user == null ? const Login() :const  HomePage(),
    );
  }
}
