import 'dart:convert';

import 'package:http/http.dart' as http;


class fetchdata{
  static Future getInfo () async {
    var array1 =[];
    var api_url = "https://restcountries.com/v3.1/all";
    var response = await http.get(Uri.parse(api_url),);
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var map1 = Map.fromIterable(jsonData as List);
      List<dynamic> keysList = map1.keys.toList();
      var data = map1.entries.toList();
      
      

    }
    else {

    }
  }

}

class countryInfo{
  final String name, population;
  countryInfo(this.name, this.population);
}