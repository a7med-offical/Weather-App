// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:weather_app/model.dart';

// import 'service.dart';

// class model {
//   String name;
//   String status;
//   double maxTemp;
//   model({required this.name, required this.status,required this.maxTemp });

//   factory model.fromJson(jsondata) {
//     return model(
//         name: jsondata['location']['name'],
//         status: jsondata['current']['condition']['text'],
//         maxTemp: jsondata['forecast']['forecastday'][0]['day']['maxtemp_c']
//         );
//   }
// }


// class Test extends StatelessWidget {
//   const Test({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: FutureBuilder<model>(
//           future: service().getService(),
//           builder: ((context, snapshot) {
//             if (snapshot.hasData) {
//               return Column(
//                 children: [
//                   Text(snapshot.data!.name),
//              Text(snapshot.data!.status),
//                                Text('${snapshot.data!.maxTemp}'),

//                 ],
//               );
//             } else if (snapshot.hasError) {
//               return Text('jnwipoedj');
//             }
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           })),
//     );
//   }
// }


// class service {
//   Future<model> getService() async {
//     http.Response response = await http.get(Uri.parse(
//         'https://api.weatherapi.com/v1/forecast.json?key=18efac0484bb4fdebbc70645230809&q=London&days=1'));

//     Map<String, dynamic> data = jsonDecode(response.body);

//     model mm = model.fromJson(data);

//       return mm;
//   }
// }

