import 'dart:convert';

import 'package:http/http.dart' as http;


class fetchdata{
  static Future getInfo () async {
    var api_url = "https://restcountries.com/v3.1/all";
    var response = await http.get(Uri.parse(api_url),);
    if (response.statusCode == 200) {
      //List<String> result = response.body.indexOf("name", 0);
      var jsonData = jsonDecode(response.body);
      List<countryInfo> infos =[];
      print(jsonData.runtimeType);

      // for(var u in jsonData){
      //   countryInfo info = countryInfo(u['name'], u['population']);
      //   infos.add(info);
      // }
      // print(infos.length);
      // return infos;
    }
    else {

    }
  }

}

class countryInfo{
  final String name, population;
  countryInfo(this.name, this.population);
}