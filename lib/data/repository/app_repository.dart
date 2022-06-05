import 'package:dartz/dartz.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:rimo/constants/api_constant.dart';
import 'package:rimo/constants/string_constant.dart';
import 'dart:convert' as con;
import 'package:rimo/data/model/failure.dart';
import 'package:rimo/data/repository/api_repository.dart';

abstract class BaseAppRepository {
  Future<Either<Failure, String>> login({String? email, password});
  Future<Either<Failure, dynamic>> getOrder();
}

class AppRepository implements BaseAppRepository {
  final BaseApiRepository _apiRepository = ApiRepository();

  @override
  Future<Either<Failure, dynamic>> getOrder() async {
    try {
      final http.Response response = await _apiRepository.getApi(getOrderUrl);
      print(response.body);
      print(response.statusCode);
      if (response.statusCode == 200) {
        var content = await con.jsonDecode(response.body);
        print("order: $content");
        return const Right("success");
      } else {
        var content = await con.jsonDecode(response.body);
        var message = content['message'];
        return Left(Failure(message));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, String>> login({email, password}) async {
    Map<String, dynamic> params = {};
    params["username"] = email;
    params["password"] = password;
    params["device_identification"] =
        "w0pSP0GcwC55vRFZuLZkKmCEk1cH02SylzWFZNsX";
    params["firebase_messaging_token"] =
        "ujxPOCCBPk80wgTtafHjyGCbpqmG7uXkYEmynsWjsDL2lJEX6JGX9hR6UaykiNzsHZVIn32vQn3FEx8pDrSLhwz53zoOlgd8lbRZfuKKxwiBw13RBNcSzwYa9C4BusUddPfIO0sUgnSktW59yyidl3MOO4J344Pq";
    Map<String, String> headers = {
      // "cache-control": "no-cache,private",
      // "content-type": "application/json "
    };

    try {
      final http.Response response =
          await _apiRepository.postApi(loginUrl, headers, params);
      if (response.statusCode == 200) {
        var content = con.jsonDecode(response.body);
        var message = content["message"];

        String token = await content["data"]["token"];
        final box = await Hive.openBox<String>(userToken);
        box.put(userToken, token);
        return Right(message);
      } else if (response.statusCode == 422) {
        var content = await con.jsonDecode(response.body);
        Map<String, dynamic> message = await content["errors"];
        var errors = message.keys.toList();
        return Left(Failure(errors.first[0]));
      } else {
        var content = con.jsonDecode(response.body);
        var message = content["message"];
        return Left(Failure(message));
      }
    } catch (e) {
      return Left(Failure(e.toString()));
    }
  }
}
