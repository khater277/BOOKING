import 'package:booking/core/api/end_points.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilites_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'dio_helper.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class DioHelper {
  factory DioHelper(Dio dio, {String baseUrl}) = _DioHelper;

  @GET(EndPoints.hotels)
  Future<HotelsResponseModel> getAllHotels({
    @Queries() required Map<String, dynamic> hotelsBodyModel,
  });

  @GET(EndPoints.allFacilities)
  Future<FacilitiesResponseModel> getAllFacilities({
    @Queries() required Map<String, dynamic> facilitiesBodyModel,
  });
}
