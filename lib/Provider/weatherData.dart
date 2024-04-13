import 'package:flutter/material.dart';

import '../Model/WeatherModel.dart';

class WeatherData extends ChangeNotifier {
  WeatherModel? weathermodel;

  void getWatherData(WeatherModel model) {
    weathermodel = model;
    notifyListeners();
  }
}
