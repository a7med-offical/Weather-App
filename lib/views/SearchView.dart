import 'package:flutter/material.dart';
import 'package:weather_app/Provider/weatherData.dart';
import '../Services/WeatherService.dart';
import '../Model/WeatherModel.dart';
import 'package:provider/provider.dart';

class SearchView extends StatelessWidget {
  SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        
        elevation: 0,
              backgroundColor: Colors.pink[50],

        title: const Text('Search a city',style: TextStyle(fontSize: 22,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel =
                  await WeatherService().getService(cityName: value);
              Provider.of<WeatherData>(context, listen: false)
                  .getWatherData(weatherModel);


              Navigator.pop(context);
            },
            decoration: const InputDecoration(
              label: Text('Search'),
              hintText: 'Enter a city',
              suffixIcon: Icon(Icons.search),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 35, horizontal: 15),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.orange),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
