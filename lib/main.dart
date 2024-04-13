import 'package:flutter/material.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:provider/provider.dart';
import 'Provider/weatherData.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WeatherData(),
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
