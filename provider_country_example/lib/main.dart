import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_country_example/controller/countries_controller.dart';
import 'package:provider_country_example/widgets/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CountriesController>(
      create: (context) => CountriesController(0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider County List Example',
        theme: ThemeData(primaryColor: Colors.purple),
        home: Home(),
      ),
    );
  }
}
