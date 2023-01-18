import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:news_app/features/feed/models/news_model.dart';

class FeedService {
  static const baseUrl = "https://inshortsapi.vercel.app/news?category=";

  Future<List<Data>> getNewsList(String category) async {
    try {
      final url = Uri.parse(baseUrl + category!);
      List<Data> newsList = [];
      final res = await http.get(url);
      if (res.statusCode == 200) {
        final jsonData = jsonDecode(res.body);
        Feed newsFeed = Feed.fromJson(jsonData);

        for (var element in newsFeed.data!) {
          newsList.add(element);
        }
        return newsList;
      }
      return newsList;
    } on SocketException {
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
