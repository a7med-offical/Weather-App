class WeatherModel {
  String name;
  String dateTime;
  double averageTemo;
  double maxTemp;
  double minTemp;
  String? image;
  String status;
  WeatherModel({
    required this.name,
    required this.averageTemo,
    required this.dateTime,
    required this.image,
    required this.maxTemp,
    required this.minTemp,
    required this.status,
  });

  factory WeatherModel.fromJson(jsondata) {
    return WeatherModel(
        name: jsondata['location']['name'],
        dateTime: jsondata['current']['last_updated'],
        averageTemo: jsondata['forecast']['forecastday'][0]['day']['avgtemp_c'],
        minTemp: jsondata['forecast']['forecastday'][0]['day']['mintemp_c'],
        image: jsondata['forecast']['forecastday'][0]['day']['condition']
            ['icon'],
        status: jsondata['forecast']['forecastday'][0]['day']['condition']
            ['text'],
        maxTemp: jsondata['forecast']['forecastday'][0]['day']['maxtemp_c']);
  }
}
