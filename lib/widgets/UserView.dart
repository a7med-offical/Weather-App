
import 'package:flutter/material.dart';
import 'package:weather_app/Provider/weatherData.dart';
import 'package:provider/provider.dart';
import 'no_weather_body.dart';
import 'weather_info_body.dart';

class UserView extends StatelessWidget {
  const UserView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.of<WeatherData>(context).weathermodel !=null
        ? const WeatherInfoBody()
        : const NoWeatherBody();
   
  }
}
