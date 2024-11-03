import 'dart:convert';
import 'package:http/http.dart' as http;

class UserFetcher {
  static const String _url = 'https://random-data-api.com/api/users/random_user?size=10';

  static Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await http.get(Uri.parse(_url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load user data with status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }
}
