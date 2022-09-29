import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_country_example/controller/countries_controller.dart';
import 'package:provider_country_example/models/counry_model.dart';

class CountriesMenu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<CountriesController>(
      builder: (context, countriesController, child) => DropdownButton<Country>(
        style: TextStyle(color: Colors.white),
        dropdownColor: Colors.red,
        underline: SizedBox(),
        value: countriesController.chosen,
        onChanged: (newCountry) => countriesController.onChange(newCountry!),
        items: countriesController.countries
            .map<DropdownMenuItem<Country>>(
                (country) => DropdownMenuItem<Country>(
                      value: country,
                      child: Text(country.name),
                    ))
            .toList(),
      ),
    );
  }
}
