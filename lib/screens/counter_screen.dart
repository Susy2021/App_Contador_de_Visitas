import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    counter++;
    setState(() {});
  }

  void decrease() {
    counter--;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontsize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      backgroundColor: Colors.lightBlue.shade100,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text('Visitantes', style: fontsize30),
          Text('$counter', style: fontsize30),
        ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          onPressed: () => decreaseFn(),
        ),
        FloatingActionButton(
          child: const Icon(Icons.exposure_outlined),
          onPressed: () => resetFn(),
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => increaseFn()),
      ],
    );
  }
}
