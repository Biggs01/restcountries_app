import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:restcountries_app/models/testing.dart';


class fetchdata{
  static Future getInfo () async {
    List<Testing> test = [];
    var api_url = "https://restcountries.com/v3.1/all";
    var response = await http.get(Uri.parse(api_url),);
    if (response.statusCode == 200) {
      // var jsonData = jsonDecode(response.body);
      List testlist = List.from(json.decode(response.body) as List);
      for(int i = 0; i<testlist.length ; i++){
        test.add(Testing.fromJson(testlist[i] as Map<String , dynamic>));
      }
      print(test[3].languages![0].languageName);
    }
    else {

    }
  }
}

class countryInfo{
  final String name, population;
  countryInfo(this.name, this.population);
}