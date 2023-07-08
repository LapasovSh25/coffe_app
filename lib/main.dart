import 'package:coffe_app/provider/single_item_provider.dart';
import 'package:coffe_app/screens/welcomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
   runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => InfoPageProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212325)
      ),
      home: WelcomeScreen(),
    );
  }
}
