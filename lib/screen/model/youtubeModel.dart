
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<YoutubeSubcription> subcriptionList=[
  YoutubeSubcription("All", "bishwojit@gmail.com"),
  YoutubeSubcription("Live", "bishwojit@gmail.com"),
  YoutubeSubcription("Music", "bishwojit@gmail.com"),
  YoutubeSubcription("Lofi", "bishwojit@gmail.com"),
  YoutubeSubcription("Cricket", "bishwojit@gmail.com"),
  YoutubeSubcription("Bollywood", "bishwojit@gmail.com"),
  YoutubeSubcription("Fifa-2022", "bishwojit@gmail.com"),
  YoutubeSubcription("Arijit Singh", "bishwojit@gmail.com"),
  YoutubeSubcription("Football", "bishwojit@gmail.com"),
  YoutubeSubcription("Movies", "bishwojit@gmail.com"),

];


class YoutubeSubcription{
  String name="";
  String url="";
  YoutubeSubcription(this.name, this.url,);
}