import 'package:flutter/material.dart';
import 'package:posts_test/data/models/posts/post_model.dart';
import 'package:posts_test/ui/posts/widgets/post_widget.dart';

class HomeSuccessScreen extends StatelessWidget {
  const HomeSuccessScreen(this.posts, {super.key});

  final List<PostModel> posts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => PostWidget(
        posts[index],
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemCount: posts.length,
    );
  }
}
