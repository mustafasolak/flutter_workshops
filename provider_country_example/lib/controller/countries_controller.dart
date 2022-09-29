// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:provider_country_example/models/counry_model.dart';

class CountriesController extends ChangeNotifier {
  List<Country> countries = [
    Country(name: 'Turkey', continent: 'Asia - Europe', code: 'tr'),
    Country(name: 'Brazil', continent: 'South America', code: 'br'),
    Country(name: 'Canada', continent: 'North America', code: 'ca'),
    Country(name: 'England', continent: 'Europe', code: 'gb'),
    Country(name: 'France', continent: 'Europe', code: 'fr'),
  ];

  Country? _chosen;

  CountriesController(int index){
    _chosen = countries[index];
  }

  Country get chosen => _chosen!;

  onChange(Country newCountry) {
    _chosen = newCountry;
    notifyListeners();
  }
  
}
