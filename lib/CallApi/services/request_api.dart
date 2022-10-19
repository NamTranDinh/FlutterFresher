import 'dart:convert';
import 'package:demo_app/CallApi/models/account_model.dart';
import 'package:http/http.dart' as http;

// http://localhost/api_user/db/getAllAccounts.php
// https://zingmp3-application.000webhostapp.com/server/GetAllAlbum.php
// https://jsonplaceholder.typicode.com/posts

// api = baseUrl + baseParam

class RequestApi {
  static const String baseUrl = 'http://192.168.21.104/api_user/db/';
  static const String baseParam = 'getAllAccounts.php';

  /* fetch data */
  static Future<List<AccountModel>> getData({required int page}) async {
    List<AccountModel> listAccount = [];

    var response = await http.get(Uri.parse('http://192.168.21.104/api_user/db/getAllAccounts.php'));

    if (response.statusCode == 200) {
      // convert listData to List of AccountModel
      var jsonData = json.decode(response.body);

      for (var accModel in jsonData) {
        AccountModel accs = AccountModel(
          userName: accModel['user_name'],
          password: accModel['password'],
          fullName: accModel['full_name'],
          avatar: accModel['avatar'],
          type: accModel['type'],
          status: accModel['status'],
        );
        listAccount.add(accs);
      }
      //
      return listAccount;
      // print('${listAccount.elementAt(0).fullName} ${response.body}');
    } else if (response.statusCode == 404) {
      throw Exception('Not Fount');
    } else {
      throw Exception('Can\'t get post!');
    }

  }

  /* add data */
  static Future<dynamic> postData(dynamic object) async {
    var client = http.Client();
    var encodeObject = json.encode(object);
    var url = Uri.parse(baseUrl + baseParam);

    var response = await client.post(url, body: encodeObject);
    if (response.statusCode == 200) {
      return response.body;
    }
  }
}
