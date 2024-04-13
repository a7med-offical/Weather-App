import 'dart:developer';

import 'package:dio/dio.dart';
import '../Model/WeatherModel.dart';

class WeatherService {
  final Dio dio = Dio();
  final String baseUri = 'https://api.weatherapi.com/v1';
  final String apiKey = '18efac0484bb4fdebbc70645230809';
  Future<WeatherModel> getService({required String cityName}) async {
    try {
      Response response = await dio
          .get('$baseUri/forecast.json?key=$apiKey&q=$cityName&days=1');

      Map<String, dynamic> data = response.data;

      WeatherModel dataModel = WeatherModel.fromJson(data);

      
      return dataModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'] ??
          'there was a problem try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps !! there was a problem try late ');
    }
  }
}
