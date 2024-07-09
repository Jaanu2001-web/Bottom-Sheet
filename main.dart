import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Bottom Sheet',
	home: Scaffold(
		appBar: AppBar(
		title: const Text('Bottom Sheet'),
		backgroundColor: Colors.greenAccent,
		),
		body: const ModalBottomSheetDemo(),
	),
	);
}
}

class ModalBottomSheetDemo extends StatelessWidget {
const ModalBottomSheetDemo({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Center(
	child: ElevatedButton(
		child: const Text('showModalBottomSheet'),
		onPressed: () {		
		showModalBottomSheet(
			context: context,
			barrierColor: Colors.green,
			backgroundColor: Colors.red,
			elevation: 10,
			shape: RoundedRectangleBorder(
			borderRadius: BorderRadius.circular(10.0),
			),
			builder: (BuildContext context) {
			return SizedBox(
				height: 200,
				child: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: const <Widget>[
					Text('BottomSheet'),
					],
				),
				),
			);
			},
		);
		},
	),
	);
}
}
