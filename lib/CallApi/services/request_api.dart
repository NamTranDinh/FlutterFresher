import 'dart:convert';
import 'package:demo_app/CallApi/models/account_model.dart';
import 'package:http/http.dart' as http;

// http://localhost/api_user/db/getAllAccounts.php
// https://zingmp3-application.000webhostapp.com/server/GetAllAlbum.php
// https://jsonplaceholder.typicode.com/posts
// http://10.30.1.174/api_user/db/getAllAccounts.php
// 10.30.1.174


// api = baseUrl + baseParam

class RequestApi {
  static const String baseUrl = 'http://10.30.1.174/api_user/db/';
  static const String baseParam = 'getAllAccounts.php';

  /* fetch data */
  // Future<List<AccountModel>> getData({required int page}) async {
  //   List<AccountModel> listAccount = [];
  //
  //   var response = await http.get(Uri.parse(baseUrl + baseParam));
  //
  //   if (response.statusCode == 200) {
  //     // convert listData to List of AccountModel
  //     var jsonData = json.decode(response.body);
  //
  //     for (var accModel in jsonData) {
  //       AccountModel accs = AccountModel(
  //         userName: accModel['user_name'],
  //         password: accModel['password'],
  //         fullName: accModel['full_name'],
  //         avatar: accModel['avatar'],
  //         type: accModel['type'],
  //         status: accModel['status'],
  //       );
  //       listAccount.add(accs);
  //     }
  //     //
  //     return listAccount;
  //     // print('${listAccount.elementAt(0).fullName} ${response.body}');
  //   } else if (response.statusCode == 404) {
  //     throw Exception('Not Fount');
  //   } else {
  //     throw Exception('Can\'t get post!');
  //   }
  //
  // }

  Future<List<AccountModel>> getData() async{
    var response = await http.get(Uri.parse(baseUrl + baseParam));
    if(response.statusCode == 200){
      final List result = jsonDecode(response.body);
      return result.map((e) => AccountModel.fromJson(e)).toList();
    }else{
      throw Exception(response.reasonPhrase);
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
