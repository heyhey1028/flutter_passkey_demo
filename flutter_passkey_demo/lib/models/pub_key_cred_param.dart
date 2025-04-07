import 'package:freezed_annotation/freezed_annotation.dart';

part 'pub_key_cred_param.freezed.dart';
part 'pub_key_cred_param.g.dart';

@freezed
class PubKeyCredParam with _$PubKeyCredParam {
  const factory PubKeyCredParam({
    required String type,
    required int alg,
  }) = _PubKeyCredParam;

  factory PubKeyCredParam.fromJson(Map<String, dynamic> json) => _$PubKeyCredParamFromJson(json);
}
