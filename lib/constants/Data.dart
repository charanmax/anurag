import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class News {
  final String title;
  final String url;
  final String info;
  News({@required this.title, @required this.url, this.info});
}

class NewsData with ChangeNotifier {
  List<News> news = [];
  Map<String, dynamic> newsItem;
  Future<void> getAndSetData() async {
    final value = await http.get('http://10.0.2.2:3000');
    final data = jsonDecode(value.body) as List<dynamic>;
    data.forEach((element) {
//        news.add(value)
      element.forEach((e) {
        newsItem = e as Map<String, dynamic>;
        news.add(News(
            url: newsItem['link'],
            title: newsItem['text'],
            info: newsItem['info']));
      });
//        newsItem = element[0] as Map<String, dynamic>;
//        news.add(News(
//          title: newsItem['text'],
//          url: newsItem['url'],
//        ));
    });
    print(news);
//      print(news.map((e) {
//        print(e.info);
//      }));
  }

  List<News> get details {
    return [...news];
  }
}

///
//   Future<void> getAndSetData() async {
//    await http.get('http://10.0.2.2:3000').then((value) {
//      final data = jsonDecode(value.body) as List<dynamic>;
//      data.forEach((element) {
////        news.add(value)
//        element.forEach((e) {
//          newsItem = e as Map<String, dynamic>;
//          news.add(News(
//              url: newsItem['link'],
//              title: newsItem['text'],
//              info: newsItem['info']));
//        });
////        newsItem = element[0] as Map<String, dynamic>;
////        news.add(News(
////          title: newsItem['text'],
////          url: newsItem['url'],
////        ));
//      });
//      print(news);
////      print(news.map((e) {
////        print(e.info);
////      }));
//    });
//  }
