import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/model/model.dart';
import 'package:yumemi_code_check/utils/result.dart';

/// Api Client側から実施するQueryService
/// 各画面（機能）毎に具象クラスを作成し、[subscribe]された際に画面を更新する
abstract class QueryService<T extends Model> {
  void subscribe(Result<T, ApiException> result);
}
