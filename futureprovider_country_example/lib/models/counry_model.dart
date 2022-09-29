// ignore_for_file: public_member_api_docs, sort_constructors_first
class Country {
  final String name;
  final String region;
  final String subregion;
  final String capital;
  final String flag;

  Country(
      {required this.name,
      required this.region,
      required this.subregion,
      required this.capital,
      required this.flag});

  factory Country.fromJson(Map<String, dynamic> parsedJson) {

    return Country(
      name: parsedJson['name'] ?? 'boş name',
      region: parsedJson['region'] ?? 'boş region',
      subregion: parsedJson['subregion'] ?? 'boş subregion',
      capital: parsedJson['capital'] ?? 'boş capital',
      flag: parsedJson['flag'] ?? 'boş flag',
    );
  }
}
