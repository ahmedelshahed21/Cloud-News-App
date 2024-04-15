import 'package:dio/dio.dart';

class ApiService {
  final String _baseUrl='https://newsapi.org/v2/';
  final String _apiKey='ea49fee472b74be9a1333d1961a9912c';
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String,dynamic>> get({required String endPoint,Map<String, dynamic>? queryParameters})async{
    var response = await _dio.get('$_baseUrl$endPoint$_apiKey',queryParameters: queryParameters);
    return response.data;
  }
}