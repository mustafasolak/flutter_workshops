import 'package:flutter/material.dart';
import 'package:futureprovider_country_example/models/counry_model.dart';
import 'package:futureprovider_country_example/widgets/countries_menu.dart';
import 'package:futureprovider_country_example/widgets/information.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Country>? countries = Provider.of<List<Country>?>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('FutureProvider Countries'),
      ),
      body: countries == null
          ? Center(child: const CircularProgressIndicator())
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: CountriesMenu(),
                  ),
                  SizedBox(height: 50.0),
                  Information(),
                ],
              ),
            ),
    );
  }
}
