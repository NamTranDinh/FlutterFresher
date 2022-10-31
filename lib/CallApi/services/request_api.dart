import 'dart:convert';
import 'package:demo_app/CallApi/models/account_model.dart';
import 'package:http/http.dart' as http;

// https://zingmp3-application.000webhostapp.com/server/GetAllAlbum.php
/// http://10.30.1.174/api_user/db/getAllAccounts.php
/// http://10.30.1.174/api_user/db/getDataFromApi.php
/// http://10.30.2.68/api_user/db/account
// 10.30.2.68
// 192.168.21.104

// api = baseUrl + baseParam

class RequestApi {
  static const String baseUrl = 'http://10.30.2.68/api_user/db/';
  static const String baseParam = 'account';

  /* fetch data */
  Future<List<AccountModel>> getData() async {
    var response = await http.get(Uri.parse(baseUrl + baseParam));

    if (response.statusCode == 200) {
      // convert listData to List of AccountModel
      final jsonData = jsonDecode(response.body) as List;

      List<AccountModel> listAccount =
          jsonData.map((e) => AccountModel.fromJson(e)).toList();
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
  static Future<dynamic> postData() async {
    var client = http.Client();
    var url = Uri.parse(baseUrl + baseParam);
    AccountModel model = AccountModel(
        userName: 'test api',
        password: '123456aA',
        fullName: 'aa bb cc',
        avatar: 'avatar',
        type: 'user',
        status: '1');

    var encodeObject = json.encode(model.toJson());

    var response = await client.post(url,
        body: encodeObject, headers: {'Content-type':'application/json', 'Accept':'application/json'});

    // print(response.statusCode);
    // print(encodeObject);

    if (response.statusCode == 200) {
      return response.body;
    }
  }
}
