import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_test/cubit/posts/posts_cubit.dart';
import 'package:posts_test/cubit/posts/posts_state.dart';
import 'package:posts_test/service_locator.dart';
import 'package:posts_test/ui/posts/screen/states/home_success_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeCubit = getIt.get<PostsCubit>();
  @override
  void initState() {
    homeCubit.getPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 16,
          right: 16,
        ),
        child: BlocBuilder(
          bloc: homeCubit,
          builder: (context, state) {
            if (homeCubit.state is PostsLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (homeCubit.state is PostsSuccessState) {
              final homeData = (homeCubit.state as PostsSuccessState).posts;
              return HomeSuccessScreen(homeData);
            } else if (homeCubit.state is PostsErrorState) {
              return const Center(child: Text('Error'));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
