import 'package:news_test/data/models/posts/post_model.dart';
import 'package:news_test/data/data_provider/posts/json_placehloder_api_provider.dart';

class PostsRepository {
  final JsonPlaceholderApiProvider jsonPlaceholderApiProvider;

  PostsRepository(this.jsonPlaceholderApiProvider);

  Future<List<PostModel>> getPosts() async {
    final dataFromApiProvider = await jsonPlaceholderApiProvider.getHomeData();
    final posts = dataFromApiProvider
        .map(
          (element) => PostModel.fromJson(element),
        )
        .toList();
    return posts;
  }
}
