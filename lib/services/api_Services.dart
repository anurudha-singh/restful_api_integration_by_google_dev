import 'dart:developer';

import 'package:http/http.dart' as http;

import '../constants.dart';
import '../models/user_model.dart';
// this file will handle the API calls and write specific methods to fetch data and parse it.
class ApiService {
  Future<List<UserModel>?> getUsers() async {//getUsers() is a custom function created by us
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> _model = userModelFromJson(response.body);//converting json response into a List<UserModel>
        //this method is available in user_Model class
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
