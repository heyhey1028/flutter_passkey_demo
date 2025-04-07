import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/begin_registration_request.dart';
import '../models/begin_registration_response.dart';
import '../models/finish_registration_request.dart';
import '../models/finish_registration_response.dart';
import '../models/begin_authentication_request.dart';
import '../models/begin_authentication_response.dart';
import '../models/finish_authentication_request.dart';
import '../models/finish_authentication_response.dart';

class PasskeyRepository {
  final String baseUrl;

  PasskeyRepository({required this.baseUrl});

  Future<BeginRegistrationResponse> beginPasskeyRegistration(
    BeginRegistrationRequest request,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/beginPasskeyRegistration'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        return BeginRegistrationResponse.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw Exception('Failed to begin passkey registration: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      throw Exception('Error during passkey registration: $e');
    }
  }

  Future<FinishRegistrationResponse> finishPasskeyRegistration(
    FinishRegistrationRequest request,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/finishPasskeyRegistration'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        return FinishRegistrationResponse.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw Exception('Failed to finish passkey registration: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      throw Exception('Error during passkey registration completion: $e');
    }
  }

  Future<BeginAuthenticationResponse> beginPasskeyAuthentication(
    BeginAuthenticationRequest request,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/beginPasskeyAuthentication'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        return BeginAuthenticationResponse.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw Exception('Failed to begin passkey authentication: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      throw Exception('Error during passkey authentication: $e');
    }
  }

  Future<FinishAuthenticationResponse> finishPasskeyAuthentication(
    FinishAuthenticationRequest request,
  ) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/finishPasskeyAuthentication'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        return FinishAuthenticationResponse.fromJson(
          jsonDecode(response.body) as Map<String, dynamic>,
        );
      } else {
        throw Exception('Failed to finish passkey authentication: ${response.statusCode} - ${response.body}');
      }
    } catch (e) {
      throw Exception('Error during passkey authentication completion: $e');
    }
  }
}
