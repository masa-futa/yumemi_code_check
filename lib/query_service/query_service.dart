import 'package:yumemi_code_check/data_source/api_exception.dart';
import 'package:yumemi_code_check/model/model.dart';
import 'package:yumemi_code_check/utils/result.dart';

abstract class QueryService<T extends Model> {
  void subscribe(Result<T, ApiException> result);
}
