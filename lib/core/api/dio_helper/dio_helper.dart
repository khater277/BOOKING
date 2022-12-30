import 'package:booking/core/api/end_points.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'dio_helper.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class DioHelper {
  factory DioHelper(Dio dio, {String baseUrl}) = _DioHelper;

  @GET(EndPoints.hotels)
  Future<HotelsResponseModel> getAllHotels({
    @Body() required HotelsBodyModel hotelsBodyModel,
  });
}

// {
//     "name": "asd1",
//     "email": "1234@yahoo.com",
//     "password": "123456",
//     "password_confirmation": "123456",
//     "image": ""
// }
