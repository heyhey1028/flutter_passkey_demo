import 'package:freezed_annotation/freezed_annotation.dart';

part 'authenticator_selection.freezed.dart';
part 'authenticator_selection.g.dart';

@freezed
class AuthenticatorSelection with _$AuthenticatorSelection {
  const factory AuthenticatorSelection({
    required String authenticatorAttachment,
    required bool requireResidentKey,
    required String userVerification,
  }) = _AuthenticatorSelection;

  factory AuthenticatorSelection.fromJson(Map<String, dynamic> json) => _$AuthenticatorSelectionFromJson(json);
}
