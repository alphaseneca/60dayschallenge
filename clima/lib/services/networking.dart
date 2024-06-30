import 'package:http/http.dart' as http;
// Imported as http because http package methods can be used without having
// the object and it makes confusing for the coders to understand the code. So added it.
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future<dynamic> getData() async {
    // Async method
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
