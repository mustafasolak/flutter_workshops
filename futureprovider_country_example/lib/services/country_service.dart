import 'dart:convert';

import 'package:futureprovider_country_example/models/counry_model.dart';
import 'package:http/http.dart' as http;

const url = 'https://restcountries.com/v2/all';

class CountryService {
  Future<List<Country>?> fetchCountries() async {
    var response = await http.get(Uri.parse(url));

    print('Solak response.body :${response.body}');

    var jsonReponse = jsonDecode(response.body) as List;

    print('Solak jsonReponse :$jsonReponse');

    var list = jsonReponse.map((country) => Country.fromJson(country)).toList();
    print('Solak list :$list');
    return list;
  }
}
