import 'package:flutter/material.dart';
import 'package:posts_test/service_locator.dart';
import 'package:posts_test/ui/posts/screen/main/home_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Posts',
      home: HomeScreen(),
    );
  }
}
