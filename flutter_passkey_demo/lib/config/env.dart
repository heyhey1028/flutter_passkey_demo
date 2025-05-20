class Env {
  static const baseUrl = String.fromEnvironment(
    'PASSKEY_API_BASE_URL',
    defaultValue: 'http://localhost:5001',
  );
}
