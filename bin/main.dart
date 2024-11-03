import 'package:hybrid_3/user_fetch.dart';

void main() async {
  try {
    final users = await UserFetcher.fetchUsers();
    for (var user in users) {
      print('${user['uid']}, ${user['first_name']}, ${user['last_name']}');
    }
  } catch (e) {
    print(e);
  }
}
