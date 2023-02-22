import 'package:get_it/get_it.dart';
import 'package:posts_test/cubit/posts/posts_cubit.dart';
import 'package:posts_test/data/data_provider/posts/json_placehloder_api_provider.dart';
import 'package:posts_test/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

final getIt = GetIt.instance;

void setup() {
  // BLoC
  getIt.registerFactory(() => PostsCubit(getIt()));

  // Repositories
  getIt.registerFactory<PostsRepository>(
    () => PostsRepository(getIt()),
  );

  // Data Providers
  getIt.registerLazySingleton<JsonPlaceholderApiProvider>(
    () => JsonPlaceholderApiProvider(getIt()),
  );

  final client = http.Client();
  getIt.registerLazySingleton(() => client);
}
