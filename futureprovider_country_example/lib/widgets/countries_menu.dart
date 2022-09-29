import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:futureprovider_country_example/controller/countries_controller.dart';
import 'package:futureprovider_country_example/models/counry_model.dart';
import 'package:provider/provider.dart';

class CountriesMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Country>? countries = Provider.of<List<Country>?>(context);

    return countries == null
        ? CircularProgressIndicator()
        : Consumer<CountriesController>(
            builder: (context, countriesController, child) {
            if (countriesController.getChosen())
              countriesController.chosen = countries.first;
            return DropdownButton<Country>(
              style: TextStyle(color: Colors.white),
              dropdownColor: Colors.red,
              isExpanded: true,
              underline: SizedBox(),
              hint: Text('Seçiniz'),
              value: countriesController.chosen,
              onChanged: (newCountry) =>
                  countriesController.onChange(newCountry!),
              items: countries
                  .map<DropdownMenuItem<Country>>(
                      (country) => DropdownMenuItem<Country>(
                            value: country,
                            child: Text(country.name),
                          ))
                  .toList(),
            );
          });
  }
}
