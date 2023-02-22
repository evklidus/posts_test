import 'package:posts_test/data/models/posts/post_model.dart';

abstract class PostsState {}

class PostsLoadingState extends PostsState {}

class PostsSuccessState extends PostsState {
  final List<PostModel> posts;

  PostsSuccessState(this.posts);
}

class PostsErrorState extends PostsState {}
