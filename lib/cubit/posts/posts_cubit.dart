import 'package:bloc/bloc.dart';
import 'package:posts_test/data/repository/posts_repository.dart';
import 'package:posts_test/cubit/posts/posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(this.postsRepository) : super(PostsLoadingState());
  final PostsRepository postsRepository;

  Future<void> getPosts() async {
    try {
      final posts = await postsRepository.getPosts();
      emit(state);
      emit(PostsSuccessState(posts));
    } catch (e) {
      emit(PostsErrorState());
    }
  }
}
