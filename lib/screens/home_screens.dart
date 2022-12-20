import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle fontsize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Visitantes', style: fontsize30),
              Text('0', style: fontsize30),
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
