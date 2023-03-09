import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';

class ManagementSystem extends StatelessWidget {
  const ManagementSystem({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
