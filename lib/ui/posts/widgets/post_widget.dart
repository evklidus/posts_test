import 'package:flutter/material.dart';
import 'package:news_test/data/models/posts/post_model.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(this.post, {super.key});

  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black12,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            post.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(post.body),
        ],
      ),
    );
  }
}
