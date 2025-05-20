import 'package:flutter_passkey_demo/services/passkey_service.dart';
import 'package:flutter_passkey_demo/repositories/passkey_repository.dart';
import 'package:flutter_passkey_demo/config/env.dart';

class PasskeyServiceProvider {
  static PasskeyService get instance {
    return PasskeyService(
      repository: PasskeyRepository(
        baseUrl: Env.baseUrl,
      ),
    );
  }
}
