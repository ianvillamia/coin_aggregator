import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'coin_aggregator_service.g.dart';

@RestApi(baseUrl: 'https://reqres.in/')
abstract class UploaderApiService {
  factory UploaderApiService(Dio dio, {String baseUrl}) = _UploaderApiService;

  @POST('api/users')
  Future<void> users(@Body() Map<String, dynamic> map);
}
