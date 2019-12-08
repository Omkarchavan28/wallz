import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

var apiKey = '563492ad6f917000010000016a6927158cf84902a6338fa59ef5277b';
Future<dynamic> fetchPost(String query) async {
  final response = await http.get(
    'https://api.pexels.com/v1/search?query=$query+query&per_page=15&page=1',
    headers: {HttpHeaders.authorizationHeader: apiKey},
  );
  final responseJson = json.decode(response.body);
  List<String> imageLinks = [];
  for (var i = 0; i < responseJson['photos'].length; i++) {
    imageLinks.add(responseJson['photos'][i]['src']['small']);
  }
  print(imageLinks);
  return imageLinks;
}
