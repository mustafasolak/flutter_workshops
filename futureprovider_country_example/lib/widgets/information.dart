import 'package:flag/flag_widget.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:futureprovider_country_example/controller/countries_controller.dart';
import 'package:provider/provider.dart';
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
                    Text('Information Panel'),
                    SizedBox(height: 20),
                    Text('Country name :${countriesCountroller.chosen.name}'),
                    SizedBox(height: 20),
                    SvgPicture.network(
                      countriesCountroller.chosen.flag,
                      width: 150,
                      height: 150,
                    )
                  ],
                ),
    );
  }
}
