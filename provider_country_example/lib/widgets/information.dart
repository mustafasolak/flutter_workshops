import 'package:flag/flag_widget.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:provider_country_example/controller/countries_controller.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CountriesController>(
      builder: (context, countriesCountroller, child) =>
          countriesCountroller.chosen == null
              ? Center(child: Text('Select a country'))
              : Column(
                  children: [
                    Text('Information'),
                    SizedBox(height: 40),
                    Text(countriesCountroller.chosen.name),
                    Flag.fromString(
                      countriesCountroller.chosen.code,
                      width: 100,
                      height: 100,
                    )
                  ],
                ),
    );
  }
}
