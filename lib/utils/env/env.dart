import 'package:envied/envied.dart';

part 'generated/env.g.dart';

@Envied(requireEnvFile: false, obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'JWT')
  static String jwt = _Env.jwt;
  @EnviedField(varName: 'INSTALLATION_ID')
  static String installationId = _Env.installationId;
}
