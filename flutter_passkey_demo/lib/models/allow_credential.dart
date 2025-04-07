import 'package:freezed_annotation/freezed_annotation.dart';

part 'allow_credential.freezed.dart';
part 'allow_credential.g.dart';

@freezed
class AllowCredential with _$AllowCredential {
  const factory AllowCredential({
    required String id,
    required String type,
    required List<String> transports,
  }) = _AllowCredential;

  factory AllowCredential.fromJson(Map<String, dynamic> json) => _$AllowCredentialFromJson(json);
}
