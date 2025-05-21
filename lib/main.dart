import 'package:flutter/material.dart';
import 'package:profile_app/profile_activity.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile App',
      theme: ThemeData.dark(),
      home: const ProfileActivity(),
    );
  }
}
