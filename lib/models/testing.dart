import 'package:flutter/foundation.dart';

@immutable
class Testing {
  Testing({
    this.name,
    this.independent,
    this.unMember,
    this.currencies,
    this.capital,
    this.region,
    this.subregion,
    this.languages,
    this.latlng,
    this.area,
    this.flag,
    this.maps,
    this.population,
    this.fifa,
    this.car,
    this.timezones,
    this.continents,
    this.flags,
    this.coatOfArms,
    this.startOfWeek,
  });

  Name? name;
  bool? independent;
  bool? unMember;
  List<Currencies>? currencies;
  List<String>? capital;
  String? region;
  String? subregion;
  List<Languages>? languages;
  List<double>? latlng;
  double? area;
  String? flag;
  Maps? maps;
  int? population;
  String? fifa;
  Car? car;
  List<String>? timezones;
  List<String>? continents;
  Flags? flags;
  CoatOfArms? coatOfArms;
  String? startOfWeek;

  factory Testing.fromJson(Map<String, dynamic> json) {
    List<Currencies> dummy = [];
    List<Languages> dummy1 = [];

    final parsedJson = json['currencies'];

    if (parsedJson != null) {
      parsedJson.forEach((fruitName, fruitDetails) {
        if (fruitName != null && fruitDetails != null) {
          dummy.add(Currencies.fromJson(fruitName, fruitDetails));
        }
      });
    }
    final parsedJson1 = json['languages'];

    if(parsedJson1 != null){
      parsedJson1.forEach((fruitName, fruitDetails){
        if (fruitName != null && fruitDetails != null){
          dummy1.add(Languages.fromJson(fruitName, fruitDetails));
        }
      });
    }



    return Testing(
        currencies: dummy,
        name: Name.fromJson(json['name']),
        independent: json['independent'],
        unMember: json['unMember'],
        capital:
            (json['capital'] as List? ?? []).map((e) => e as String).toList(),
        region: json['region'].toString(),
        subregion: json['subregion'].toString(),
        languages: dummy1,
        latlng:
            (json['latlng'] as List? ?? []).map((e) => e as double).toList(),
        area: (json['area']).toDouble(),
        flag: json['flag'].toString(),
        maps: Maps.fromJson(json['maps']),
        population: json['population'],
        fifa: json['fifa'].toString(),
        car: Car.fromJson(json['car']),
        timezones:
            (json['timezones'] as List? ?? []).map((e) => e as String).toList(),
        continents: (json['continents'] as List? ?? [])
            .map((e) => e as String)
            .toList(),
        flags: Flags.fromJson(json['flags']),
        coatOfArms: CoatOfArms.fromJson(json['coatOfArms']),
        startOfWeek: json['startOfWeek'].toString());
  }

  Map<String, dynamic> toJson() => {
        'name': name?.toJson(),
        'independent': independent,
        'unMember': unMember,
        'capital': capital?.map((e) => e.toString()).toList(),
        'region': region,
        'subregion': subregion,
        // 'languages': languages.toJson(),
        'latlng': latlng?.map((e) => e.toString()).toList(),
        'area': area,
        'flag': flag,
        'maps': maps?.toJson(),
        'population': population,
        'fifa': fifa,
        'car': car?.toJson(),
        'timezones': timezones?.map((e) => e.toString()).toList(),
        'continents': continents?.map((e) => e.toString()).toList(),
        'flags': flags?.toJson(),
        'coatOfArms': coatOfArms?.toJson(),
        'startOfWeek': startOfWeek
      };

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Testing &&
          name == other.name &&
          independent == other.independent &&
          unMember == other.unMember &&
          currencies == other.currencies &&
          capital == other.capital &&
          region == other.region &&
          subregion == other.subregion &&
          languages == other.languages &&
          latlng == other.latlng &&
          area == other.area &&
          flag == other.flag &&
          maps == other.maps &&
          population == other.population &&
          fifa == other.fifa &&
          car == other.car &&
          timezones == other.timezones &&
          continents == other.continents &&
          flags == other.flags &&
          coatOfArms == other.coatOfArms &&
          startOfWeek == other.startOfWeek;

  @override
  int get hashCode =>
      name.hashCode ^
      independent.hashCode ^
      unMember.hashCode ^
      currencies.hashCode ^
      capital.hashCode ^
      region.hashCode ^
      subregion.hashCode ^
      languages.hashCode ^
      latlng.hashCode ^
      area.hashCode ^
      flag.hashCode ^
      maps.hashCode ^
      population.hashCode ^
      fifa.hashCode ^
      car.hashCode ^
      timezones.hashCode ^
      continents.hashCode ^
      flags.hashCode ^
      coatOfArms.hashCode ^
      startOfWeek.hashCode;
}

@immutable
class Name {
  const Name({
    required this.common,
    required this.official,
  });

  final String common;
  final String official;

  factory Name.fromJson(Map<String, dynamic> json) => Name(
      common: json['common'].toString(), official: json['official'].toString());

  Map<String, dynamic> toJson() => {'common': common, 'official': official};

  Name clone() => Name(common: common, official: official);

  Name copyWith({String? common, String? official}) => Name(
        common: common ?? this.common,
        official: official ?? this.official,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Name && common == other.common && official == other.official;

  @override
  int get hashCode => common.hashCode ^ official.hashCode;
}

@immutable
class Currencies {
  String? Iname;
  String? name;
  String? symbol;

  Currencies.fromJson(String CurrencyName, Map<String, dynamic> parsedJson)
      : Iname = CurrencyName,
        name = parsedJson['name'],
        symbol = parsedJson['symbol'];
}
// class CurrencyDetail{
//   Map<String, Item> itemMap;
//
//   factory CurrencyDetail.fromJson(Map<String, dynamic> json){
//     itemMap: getMapDataFrom(json["currencies"])
//   }
// }

@immutable
class MRU {
  const MRU({
    required this.name,
    required this.symbol,
  });

  final String name;
  final String symbol;

  factory MRU.fromJson(Map<String, dynamic> json) =>
      MRU(name: json['name'].toString(), symbol: json['symbol'].toString());

  Map<String, dynamic> toJson() => {'name': name, 'symbol': symbol};

  MRU clone() => MRU(name: name, symbol: symbol);

  MRU copyWith({String? name, String? symbol}) => MRU(
        name: name ?? this.name,
        symbol: symbol ?? this.symbol,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MRU && name == other.name && symbol == other.symbol;

  @override
  int get hashCode => name.hashCode ^ symbol.hashCode;
}

@immutable
class Languages {
  String? languageKey;
  String? languageName;

  Languages.fromJson(String Key, String name)
      : languageKey = Key,
        languageName = name;
}

@immutable
class Maps {
  const Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  final String googleMaps;
  final String openStreetMaps;

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
      googleMaps: json['googleMaps'].toString(),
      openStreetMaps: json['openStreetMaps'].toString());

  Map<String, dynamic> toJson() =>
      {'googleMaps': googleMaps, 'openStreetMaps': openStreetMaps};

  Maps clone() => Maps(googleMaps: googleMaps, openStreetMaps: openStreetMaps);

  Maps copyWith({String? googleMaps, String? openStreetMaps}) => Maps(
        googleMaps: googleMaps ?? this.googleMaps,
        openStreetMaps: openStreetMaps ?? this.openStreetMaps,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Maps &&
          googleMaps == other.googleMaps &&
          openStreetMaps == other.openStreetMaps;

  @override
  int get hashCode => googleMaps.hashCode ^ openStreetMaps.hashCode;
}

@immutable
class Car {
  const Car({
    required this.signs,
    required this.side,
  });

  final List<String> signs;
  final String side;

  factory Car.fromJson(Map<String, dynamic> json) => Car(
      signs: (json['signs'] as List? ?? []).map((e) => e as String).toList(),
      side: json['side'].toString());

  Map<String, dynamic> toJson() =>
      {'signs': signs.map((e) => e.toString()).toList(), 'side': side};

  Car clone() => Car(signs: signs.toList(), side: side);

  Car copyWith({List<String>? signs, String? side}) => Car(
        signs: signs ?? this.signs,
        side: side ?? this.side,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Car && signs == other.signs && side == other.side;

  @override
  int get hashCode => signs.hashCode ^ side.hashCode;
}

@immutable
class Flags {
  const Flags({
    required this.png,
    required this.svg,
  });

  final String png;
  final String svg;

  factory Flags.fromJson(Map<String, dynamic> json) =>
      Flags(png: json['png'].toString(), svg: json['svg'].toString());

  Map<String, dynamic> toJson() => {'png': png, 'svg': svg};

  Flags clone() => Flags(png: png, svg: svg);

  Flags copyWith({String? png, String? svg}) => Flags(
        png: png ?? this.png,
        svg: svg ?? this.svg,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Flags && png == other.png && svg == other.svg;

  @override
  int get hashCode => png.hashCode ^ svg.hashCode;
}

@immutable
class CoatOfArms {
  const CoatOfArms({
    required this.png,
    required this.svg,
  });

  final String png;
  final String svg;

  factory CoatOfArms.fromJson(Map<String, dynamic> json) =>
      CoatOfArms(png: json['png'].toString(), svg: json['svg'].toString());

  Map<String, dynamic> toJson() => {'png': png, 'svg': svg};

  CoatOfArms clone() => CoatOfArms(png: png, svg: svg);

  CoatOfArms copyWith({String? png, String? svg}) => CoatOfArms(
        png: png ?? this.png,
        svg: svg ?? this.svg,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CoatOfArms && png == other.png && svg == other.svg;

  @override
  int get hashCode => png.hashCode ^ svg.hashCode;
}
