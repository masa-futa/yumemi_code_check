import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:yumemi_code_check/model/model.dart';

part 'generated/token_model.freezed.dart';
part 'generated/token_model.g.dart';

@freezed
class TokenModel extends Model with _$TokenModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory TokenModel({
    required String token,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
