import 'package:booking/core/api/dio_helper/dio_helper.dart';
import 'package:booking/core/api/end_points.dart';
import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/core/utils/app_functions.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:booking/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:booking/features/auth/domain/usecases/facebook_sign_in_use_case.dart';
import 'package:booking/features/auth/domain/usecases/login_use_case.dart';
import 'package:booking/features/auth/domain/usecases/register_use_case.dart';
import 'package:booking/features/auth/domain/usecases/google_sign_in_use_case.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/home/cubit/home_cubit.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/datasources/hotels_remote_data_source.dart';
import 'package:booking/features/hotels/data/repositories/hotels_repository_impl.dart';
import 'package:booking/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:booking/features/hotels/domain/usecases/facilities_use_case.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:booking/features/profile/cubit/profile_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

void setupGetIt() {
  /// CUBIT
  di.registerLazySingleton<RegisterCubit>(
      () => RegisterCubit(registerUseCase: di()));
  di.registerLazySingleton<LoginCubit>(() => LoginCubit(
        loginUseCase: di(),
        googleSignInUseCase: di(),
        facebookSignInUseCase: di(),
      ));
  di.registerLazySingleton<HotelsCubit>(() => HotelsCubit(
        getHotelsUseCase: di(),
        getFacilitiesUseCase: di(),
      ));
  di.registerLazySingleton<HomeCubit>(() => HomeCubit());
  di.registerLazySingleton<BookingCubit>(() => BookingCubit());
  di.registerLazySingleton<ProfileCubit>(() => ProfileCubit());

  /// DATA SOURCES
  di.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dioHelper: di(), firebaseHelper: di()));
  di.registerLazySingleton<HotelsRemoteDataSource>(
      () => HotelsRemoteDataSourceImpl(dioHelper: di()));

  /// REPOSITORIES
  di.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(authRemoteDataSource: di()));
  di.registerLazySingleton<HotelsRepository>(
      () => HotelsRepositoryImpl(hotelsRemoteDataSource: di()));

  /// USECASES
  di.registerLazySingleton<RegisterUseCase>(
      () => RegisterUseCase(authRepository: di()));
  di.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(authRepository: di()));
  di.registerLazySingleton<GetHotelsUseCase>(
      () => GetHotelsUseCase(hotelsRepository: di()));
  di.registerLazySingleton<GetFacilitiesUseCase>(
      () => GetFacilitiesUseCase(hotelsRepository: di()));

  di.registerLazySingleton<GoogleSignInUseCase>(
      () => GoogleSignInUseCase(authRepository: di()));

  di.registerLazySingleton<FacebookSignInUseCase>(
      () => FacebookSignInUseCase(authRepository: di()));

  /// DIO
  di.registerLazySingleton<DioHelper>(() => DioHelper(di()));
  di.registerLazySingleton<Dio>(() => _createAndSetupDio());

  /// FIREBASE
  di.registerLazySingleton<FirebaseHelper>(() => FirebaseHelperImpl());
}

Dio _createAndSetupDio() {
  Dio dio = Dio();

  dio.options
    ..baseUrl = EndPoints.baseUrl
    ..responseType = ResponseType.plain
    ..headers = {
      'Api-key': EndPoints.apiKey,
      'X-Signature': AppFunctions.generateSHA256(),
      'Content-Type': 'application/json',
      'Accept-Encoding': 'gzip',
    }
    // ..connectTimeout = 20 * 1000
    ..followRedirects = false;

  dio.interceptors.add(
    LogInterceptor(
        request: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,
        error: true),
  );

  return dio;
}
