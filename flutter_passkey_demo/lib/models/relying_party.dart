import 'package:freezed_annotation/freezed_annotation.dart';

part 'relying_party.freezed.dart';
part 'relying_party.g.dart';

@freezed
class RelyingParty with _$RelyingParty {
  const factory RelyingParty({
    required String name,
    required String id,
  }) = _RelyingParty;

  factory RelyingParty.fromJson(Map<String, dynamic> json) => _$RelyingPartyFromJson(json);
}
