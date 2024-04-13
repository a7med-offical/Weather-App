import 'package:flutter/material.dart';
import '../widgets/UserView.dart';
import 'SearchView.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.pink[50],
          title: const Text(
            'Weather App',
            style: TextStyle(
                color: Colors.black,fontSize: 22),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return SearchView();
                  }));
                },
                icon: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: const UserView());
  }
}
