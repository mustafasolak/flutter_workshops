import 'package:flutter/material.dart';
import 'package:futureprovider_country_example/controller/countries_controller.dart';
import 'package:futureprovider_country_example/models/counry_model.dart';
import 'package:futureprovider_country_example/services/country_service.dart';
import 'package:futureprovider_country_example/widgets/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  CountryService countryService = CountryService();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CountriesController>(
          create: (context) => CountriesController(),
        ),
        FutureProvider<List<Country>?>(
          create: (_) => countryService.fetchCountries(),
          initialData: null,
          catchError: (_, error) {
            print(error);
            return [
              Country(
                  name: '',
                  region: 'region',
                  subregion: 'subregion',
                  capital: 'capital',
                  flag: '')
            ];
          },
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FutureProvider County List Example',
        theme: ThemeData(primaryColor: Colors.purple),
        home: Home(),
      ),
    );
  }
}
