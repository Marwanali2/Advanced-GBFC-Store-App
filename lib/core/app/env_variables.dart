import 'package:flutter_dotenv/flutter_dotenv.dart';

enum EnvironmentType { dev, prod }

class EnvVariables {
  EnvVariables._(); // Private constructor
  static final EnvVariables instance = EnvVariables._();
  String _envType = '';
  bool _isProd = false;
  Future<void> init(EnvironmentType type) async {
    switch (type) {
      case EnvironmentType.dev:
        await dotenv.load(fileName: '.env.dev');
      case EnvironmentType.prod:
        await dotenv.load(fileName: '.env.prod');
    }
    _envType = dotenv.get('ENV_TYPE');
    _isProd = _envType == 'prod';
  }

  String get envType => _envType;
  bool get isProd => _isProd;
}
