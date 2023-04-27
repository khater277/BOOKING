import 'package:booking/core/apis/booking/booking_end_points.dart';
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

part 'booking_api.g.dart';

@RestApi(baseUrl: BookingEndPoints.baseUrl)
abstract class BookingApi {
  factory BookingApi(Dio dio, {String baseUrl}) = _BookingApi;

  @GET(BookingEndPoints.hotelContent + BookingEndPoints.hotels)
  Future<HotelsResponseModel> getAllHotels({
    @Queries() required Map<String, dynamic> hotelsParamsModel,
  });

  @GET(BookingEndPoints.hotelContent + BookingEndPoints.allFacilities)
  Future<FacilitiesResponseModel> getAllFacilities({
    @Queries() required Map<String, dynamic> facilitiesParamsModel,
  });

  @POST(BookingEndPoints.booking + BookingEndPoints.checkAvailability)
  Future<CheckAvailabilityResponse> checkAvailability({
    @Body() required CheckAvailabilityBody checkAvailabilityBody,
  });

  @POST(BookingEndPoints.booking + BookingEndPoints.checkRates)
  Future<CheckRateResponse> checkRate({
    @Body() required CheckRateBody checkRateBody,
  });

  @POST(BookingEndPoints.booking + BookingEndPoints.createBooking)
  Future<CreateBookingResponse> createBooking({
    @Body() required CreateBookingBody createBookingBody,
  });
}
