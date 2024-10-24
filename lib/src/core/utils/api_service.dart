import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;

  ApiService() : _dio = Dio();

  static const String _baseUrl = 'https://www.googleapis.com/books/v1/';

  Future<Map<String, dynamic>> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get('$_baseUrl$endPoint',
          queryParameters: queryParameters);
      return response.data; // This returns the response data
    } on DioException catch (e) {
      // Handle DioError
      throw Exception('Failed to load data: ${e.message}');
    } catch (e) {
      // Handle other errors
      throw Exception('Unexpected error: $e');
    }
  }
}
