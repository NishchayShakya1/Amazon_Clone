// ignore_for_file: empty_catches
import 'package:amazon_clone/constants/error_handling.dart';
import 'package:amazon_clone/constants/global_variable.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:amazon_clone/models/user.dart';

class AuthService{

  // sign up user
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  })async{
    try{
       User user = User(id: '', name: '', password: '', address: '', type: '', token: '', email: '');

      http.Response res = await http.post(Uri.parse('$uri/api/signup'), body: user.toJson(),
      headers: <String, String>{
        'Content-Type': 'application/json; charset = UTF-8'
      }
      );
      if (kDebugMode) {
        print(res.body);
      }
      httpErrorHandle(response: res, context: context, onSuccess: (() {
        showSnackBar(context, 'Account Created! Login with same Crendentials');
      }));
    } catch(e){

    }
  }
}