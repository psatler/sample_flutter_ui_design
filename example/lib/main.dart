import 'package:example/pages/home_page.dart';
import 'package:example/pages/showcase_vanilla/showcase_view_vanilla.dart';
import 'package:example/pages/storybook/storybook.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const ShowcaseViewVanilla(),
      initialRoute: '/',
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ShowcaseViewVanilla.routeName: (context) => const ShowcaseViewVanilla(),
        StorybookFlutter.routeName: (context) => const StorybookFlutter(),
      },
    );
  }
}
