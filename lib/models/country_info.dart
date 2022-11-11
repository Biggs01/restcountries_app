class CountryInfo {
  String name;
  int population;
  // String? region;
  // String? capital;
  // String? motto;
  // String? officialLanguage;
  // String? ethnicGroup;
  // String? religion;
  // String? government;
  // String? independence;
  // String? area;
  // String? currency;
  // String? gdp;
  // String? timezone;
  // String? dateFormat;
  // String? dialingCode;
  // String? drivingSide;

  CountryInfo({
    required this.name,
    required this.population,
    // this.region,
    // this.capital,
    // this.motto,
    // this.officialLanguage,
    // this.ethnicGroup,
    // this.religion,
    // this.government,
    // this.independence,
    // this.area,
    // this.currency,
    // this.gdp,
    // this.timezone,
    // this.dateFormat,
    // this.dialingCode,
    // this.drivingSide
  });

  factory CountryInfo.fromJson(Map<String, dynamic> json) {
    return CountryInfo(
      name: json["name"],
      population: json["population"],
    );
    //      region: json["region"],
    //       capital: json["capital"],
    //       motto: json["motto"],
    //       officialLanguage: json["officialLanguage"],
    //       ethnicGroup: json["ethnicGroup"],
    //       religion: json["religion"],
    //       government: json["government"],
    //       independence: json["independence"],
    //       area: json["area"],
    //       currency: json["currency"],
    //       gdp: json["gdp"],
    //       timezone: json["timezone"],
    //       dateFormat: json["dateFormat"],
    //       dialingCode: json["dialingCode"],
    //       drivingSide: json["drivingSide"]
  }

  List<dynamic> toMap() {
    "name": name;
    "population": population,
    Map map = {

      // "region":region,
      // "capital":capital,
      // "motto":motto,
      // "officialLanguage":officialLanguage,
      // "ethnicGroup":ethnicGroup,
      // "religion":religion,
      // "government":government,
      // "independence":independence,
      // "area":area,
      // "currency":currency,
      // "gdp":gdp,
      // "timezone":timezone,
      // "dateFormat":dateFormat,
      // "dialingCode":dialingCode,
      // "drivingSide":drivingSide
    };
    return map;;
  }
}
