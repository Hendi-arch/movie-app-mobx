import 'package:objectid/objectid.dart';

class UtilityService {
  UtilityService.private();

  static final UtilityService _instance = UtilityService.private();

  factory UtilityService() {
    return _instance;
  }

  String generateObejectId() => ObjectId().toString();
}
