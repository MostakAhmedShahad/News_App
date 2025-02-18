import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/models/categories_news_model.dart';
import 'package:flutter_application_1/models/news_channeles_headlines_model.dart';
import 'package:http/http.dart' as http;
class NewsRepository  {

   Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlinesApi(String channelName) async{

    String url='https://newsapi.org/v2/top-headlines?sources=${channelName}&apiKey=b161b2ae3a014c59adfd0dfeea70b6f8';
    final response =await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if(response.statusCode==200){
      final body= jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);

    }
    throw Exception('Errors');



   }
   Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{

    String url='https://newsapi.org/v2/everything?q= ${category}&apiKey=b161b2ae3a014c59adfd0dfeea70b6f8';
    final response =await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if(response.statusCode==200){
      final body= jsonDecode(response.body);
      return CategoriesNewsModel.fromJson(body);

    }
    throw Exception('Errors');



   }


}