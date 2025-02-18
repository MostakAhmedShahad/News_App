import 'package:flutter_application_1/models/categories_news_model.dart';
import 'package:flutter_application_1/models/news_channeles_headlines_model.dart';
import 'package:flutter_application_1/repository/news_repository.dart';

class NewsViewModel {
  final _rep = NewsRepository();
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(channelName) async {
    final response = await _rep.fetchNewsChannelsHeadlinesApi(channelName);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(channelName) async {
    final response = await _rep.fetchCategoriesNewsApi(channelName);
    return response;
  }
}
