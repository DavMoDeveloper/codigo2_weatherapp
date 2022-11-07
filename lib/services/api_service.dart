
import 'dart:convert';

import 'package:codigo2_weatherapp/models/geolocation_model.dart';
import 'package:codigo2_weatherapp/models/wheater_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
class APIService {

  Future<WheaterModel?> getData(String city) async {
    Uri _url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$city&appid=167eff60596a26b885a5b9f463e41397");
    http.Response response = await http.get(_url);
    if (response.statusCode == 200) {
      Map<String,dynamic> myMap = json.decode(response.body);
      WheaterModel wheaterModel = WheaterModel.fromJson(myMap);
      return wheaterModel;      
    }
    return null;
  }

  Future<GeolocationModel?> getDataLocation() async {

    Position position = await Geolocator.getCurrentPosition();
    Uri _url = Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=167eff60596a26b885a5b9f463e41397");
    http.Response response = await http.get(_url);
    if(response.statusCode == 200){
      Map<String,dynamic > myMap = json.decode(response.body);
      GeolocationModel geolocationModel = GeolocationModel.fromJson(myMap);
      return geolocationModel;
    }
    return null;
  }
}