// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dio_helper.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _DioHelper implements DioHelper {
  _DioHelper(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://api.test.hotelbeds.com/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<HotelsResponseModel> getAllHotels({required hotelsBodyModel}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(hotelsBodyModel);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HotelsResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'hotel-content-api/1.0/hotels',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HotelsResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FacilitiesResponseModel> getAllFacilities(
      {required facilitiesBodyModel}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(facilitiesBodyModel);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FacilitiesResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'hotel-content-api/1.0/types/facilities',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FacilitiesResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CheckAvailabilityResponse> checkAvailability(
      {required checkAvailabilityBody}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(checkAvailabilityBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CheckAvailabilityResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'hotel-api/1.0/hotels',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CheckAvailabilityResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CheckRateResponse> checkRate({required checkRateBody}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(checkRateBody.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CheckRateResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'hotel-api/1.0/checkrates',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CheckRateResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CreateBookingResponse> createBooking(
      {required createBookingBody}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(createBookingBody.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<CreateBookingResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'hotel-api/1.0/bookings',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CreateBookingResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
