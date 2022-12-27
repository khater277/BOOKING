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
    baseUrl ??= 'https://api.test.hotelbeds.com/hotel-content-api/1.0/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<AuthResponseModel> register({required registerBodyModel}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(registerBodyModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AuthResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/register',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AuthResponseModel> login({required loginBodyModel}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(loginBodyModel.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AuthResponseModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'auth/login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AuthResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<HotelsResponseModel> getAllHotels({required hotelsBodyModel}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(hotelsBodyModel.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<HotelsResponseModel>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'hotels',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = HotelsResponseModel.fromJson(_result.data!);
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
