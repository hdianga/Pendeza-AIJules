import 'package:flutter/material.dart';
import 'package:pendeza/src/features/hair_care/application/hair_care_service_notifier.dart';
import 'package:provider/provider.dart';

class HairCareScreen extends StatelessWidget {
  const HairCareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hairCareServiceNotifier =
        Provider.of<HairCareServiceNotifier>(context);
    final services = hairCareServiceNotifier.services;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hair Care'),
      ),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return ListTile(
            title: Text(service.name),
            subtitle: Text(service.description),
            trailing: Text('\$${service.price.toStringAsFixed(2)}'),
          );
        },
      ),
    );
  }
}
