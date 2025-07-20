import 'package:flutter/material.dart';
import 'package:pendeza/src/features/hair_care/application/hair_care_service_notifier.dart';
import 'package:pendeza/src/features/hair_care/presentation/hair_care_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HairCareServiceNotifier(),
      child: MaterialApp(
        title: 'Pendeza',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HairCareScreen(),
      ),
    );
  }
}
