import 'package:booking/core/api/end_points.dart';
import 'package:booking/features/booking/data/models/check_availability/body/check_availability_body.dart';
import 'package:booking/features/booking/data/models/check_availability/response/check_availability_response.dart';
import 'package:booking/features/booking/data/models/check_rate/body/check_rate_body.dart';
import 'package:booking/features/booking/data/models/check_rate/response/check_rate_response.dart';
import 'package:booking/features/booking/data/models/create_booking/body/create_booking_body.dart';
import 'package:booking/features/booking/data/models/create_booking/response/create_booking_response.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'dio_helper.g.dart';

@RestApi(baseUrl: EndPoints.baseUrl)
abstract class DioHelper {
  factory DioHelper(Dio dio, {String baseUrl}) = _DioHelper;

  @GET(EndPoints.hotelContent + EndPoints.hotels)
  Future<HotelsResponseModel> getAllHotels({
    @Queries() required Map<String, dynamic> hotelsBodyModel,
  });

  @GET(EndPoints.hotelContent + EndPoints.allFacilities)
  Future<FacilitiesResponseModel> getAllFacilities({
    @Queries() required Map<String, dynamic> facilitiesBodyModel,
  });

  @POST(EndPoints.booking + EndPoints.checkAvailability)
  Future<CheckAvailabilityResponse> checkAvailability({
    @Body() required CheckAvailabilityBody checkAvailabilityBody,
  });

  @POST(EndPoints.booking + EndPoints.checkRates)
  Future<CheckRateResponse> checkRate({
    @Body() required CheckRateBody checkRateBody,
  });

  @POST(EndPoints.booking + EndPoints.createBooking)
  Future<CreateBookingResponse> createBooking({
    @Body() required CreateBookingBody createBookingBody,
  });
}
