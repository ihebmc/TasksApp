import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter: $_counter'),
              ElevatedButton(
                key: Key('incrementButton'),
                onPressed: _incrementCounter,
                child: Text('Increment'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(CounterApp());

    expect(find.text('Counter: 0'), findsOneWidget);

    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    expect(find.text('Counter: 1'), findsOneWidget);
  });
}
