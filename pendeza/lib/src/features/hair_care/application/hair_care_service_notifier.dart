import 'package:flutter/foundation.dart';
import 'package:pendeza/src/features/hair_care/domain/hair_care_service.dart';

class HairCareServiceNotifier extends ChangeNotifier {
  final List<HairCareService> _services = [
    HairCareService(
      id: '1',
      name: 'Haircut',
      description: 'A stylish haircut.',
      price: 25.0,
      duration: const Duration(minutes: 30),
    ),
    HairCareService(
      id: '2',
      name: 'Hair Dye',
      description: 'Professional hair coloring.',
      price: 60.0,
      duration: const Duration(hours: 2),
    ),
  ];

  List<HairCareService> get services => _services;
}
