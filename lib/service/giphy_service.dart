import 'package:flutter/cupertino.dart';

class GiphyService {

  AsyncSnapshot snapshot;

  String urlTrending(int limit) {
    return "https://api.giphy.com/v1/gifs/trending?api_key=DTtWmxL9an6uv0rhIjbqK1xu6YvYA0Z5&limit=$limit&rating=G";
  }

  String urlSearch(String param, int limit, int offset) {
    return "https://api.giphy.com/v1/gifs/search?api_key=DTtWmxL9an6uv0rhIjbqK1xu6YvYA0Z5&q=$param&limit=$limit&offset=$offset&rating=G&lang=pt";
  }

  String getGifFixedheight(int index) {
    return snapshot.data["data"][index]["images"]["fixed_height"]["url"];
  }

  int size() {
    return snapshot.data["data"].length;
  }

}
