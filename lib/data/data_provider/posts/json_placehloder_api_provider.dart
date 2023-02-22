import 'dart:convert';

import 'package:http/http.dart';

const _baseUrl = 'jsonplaceholder.typicode.com';
const _postsPath = '/posts';

class JsonPlaceholderApiProvider {
  final Client client;

  JsonPlaceholderApiProvider(this.client);

  Future<List<Map<String, dynamic>>> getHomeData() async {
    final response = await client.get(Uri.http(_baseUrl, _postsPath));
    final homeData = List<Map<String, dynamic>>.from(jsonDecode(response.body));
    return homeData;
  }
}
