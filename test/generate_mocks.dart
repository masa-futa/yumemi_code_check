import 'package:mockito/annotations.dart';
import 'package:yumemi_code_check/data_source/config/search_config.dart';
import 'package:yumemi_code_check/data_source/config/token_config.dart';
import 'package:yumemi_code_check/data_source/local_storage/local_storage_client.dart';
import 'package:yumemi_code_check/query_service/query_service.dart';
import 'package:yumemi_code_check/query_service/search_query.dart';

@GenerateNiceMocks([
  MockSpec<SearchQuery>(),
  MockSpec<QueryService>(),
  MockSpec<LocalStorageClient>(),
  MockSpec<SearchConfig>(),
  MockSpec<TokenConfig>(),
  MockSpec<SearchUrlQuery>(),
])
void main() {}
