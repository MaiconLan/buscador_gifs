import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {

  final Map _gifData;

  GifPage(this._gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(getGifTitle()),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){
              Share.share(getGif());
            },
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(getGif()),
      ),
    );
  }

  String getGifTitle(){
    return _gifData["title"];
  }

  String getGif(){
    return _gifData["images"]["fixed_height"]["url"];
  }
}
