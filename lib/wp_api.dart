import 'package:http/http.dart' as http;
import 'dart:convert';


Future<List> fetchWpPosts() async{
  http.Response response = await http.get(Uri.parse('https://iba-today.com/wp-json/wp/v2/posts?_embed=1&per_page=30'), headers: {
    "Accept" : "application/json"
  });

  var convertedDatatoJson = jsonDecode(response.body);
  return convertedDatatoJson;

}

// Future<Map<String,dynamic>> fetchWpPostImageUrl(url) async {
//   http.Response response = await http.get(Uri.parse(url), headers: {
//     "Accept" : "application/json"
//   });

//   Map<String, dynamic> data = Map<String, dynamic>.from(json.decode(response.body));
//   //print(convertedDatatoJson);
//   return data;
// }


// Future<Map<String,dynamic>> fetchAuthorName(url) async {
//   http.Response response = await http.get(Uri.parse(url), headers: {
//     "Accept" : "application/json"
//   });

//   Map<String, dynamic> data = Map<String, dynamic>.from(json.decode(response.body));
//   //print(convertedDatatoJson);
//   return data;
// }

