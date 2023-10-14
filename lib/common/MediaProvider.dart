import 'package:movieapp_20091/model/Media.dart';
import 'package:movieapp_20091/common/HttpHandler.dart';
import 'dart:async';

abstract class MediaProvider{
  
  Future<List<Media>> fetchMedia();
}

class MediaPrvider extends MediaProvider{
HttpHandler _client = HttpHandler.get();
@override
Future<List<Media>> fetchMedia(){
  return _client.fetchMovies();
}
}

class ShowProvider extends MediaProvider{
HttpHandler _client = HttpHandler.get();
@override
Future<List<Media>> fetchMedia(){
  return _client.fetchShow();
}
}