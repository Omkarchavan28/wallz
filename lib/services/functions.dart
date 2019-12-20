// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:http/http.dart' as http;
// import 'package:wallz/models/wallpaper.dart';

// var apiKey = '563492ad6f917000010000016a6927158cf84902a6338fa59ef5277b';
// //for Trending
// //https://api.pexels.com/v1/curated?per_page=15&page=1

// //for Photographer

// //For Query Search
// Future<List<Wallpaper>> fetchPost(String query) async {
//   final response = await http.get(
//     'https://api.pexels.com/v1/search?query=$query+query&per_page=15&page=1',
//     headers: {HttpHeaders.authorizationHeader: apiKey},
//   );
//   final responseJson = json.decode(response.body);

//   Wallpaper data = await toWallpaper(responseJson);
//   print(data);
//   List<Wallpaper> imageLinks = [];
//   for (var i = 0; i < responseJson['photos'].length; i++) {
//     imageLinks.add(toWallpaper(responseJson['photos'][i]));
//   }
//   // print(imageLinks);
//   return imageLinks;
// }

// Wallpaper toWallpaper(dynamic response) {
//   //first convert to src the to walllpaper
//   Source src = new Source(
//       response['src']['orignal'],
//       response['src']['large2x'],
//       response['src']['large'],
//       response['src']['medium'],
//       response['src']['smalll'],
//       response['src']['portrait']);

//   return Wallpaper(
//       response['id'], response['photograper'], src, response['url']);
// }
// //Random
// // If you want to get a random photo, you can use the "Curated photos"
// // endpoint and set per_page to 1 and page to a random number between
// // 1 and 1000 to get a beautiful random photo.
// // You can do the same with popular searches if you want to get a random
// // photo with a specific topic.
