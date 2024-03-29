import 'package:booking/core/apis/booking/booking_api.dart';
import 'package:booking/core/apis/booking/booking_end_points.dart';
import 'package:booking/core/apis/maps/maps_api.dart';
import 'package:booking/core/apis/maps/maps_end_points.dart';
import 'package:booking/core/firebase/firebase_helper.dart';
import 'package:booking/features/auth/cubit/login/login_cubit.dart';
import 'package:booking/features/auth/cubit/register/register_cubit.dart';
import 'package:booking/features/auth/data/datasources/remote/auth_remote_data_source.dart';
import 'package:booking/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:booking/features/auth/domain/repositories/auth_repository.dart';
import 'package:booking/features/auth/domain/usecases/facebook_sign_in_use_case.dart';
import 'package:booking/features/auth/domain/usecases/google_sign_in_use_case.dart';
import 'package:booking/features/auth/domain/usecases/login_use_case.dart';
import 'package:booking/features/auth/domain/usecases/register_use_case.dart';
import 'package:booking/features/available_rooms/cubit/available_rooms_cubit.dart';
import 'package:booking/features/available_rooms/data/datasources/available_rooms_data_source.dart';
import 'package:booking/features/available_rooms/data/repositories/available_rooms_repository_impl.dart';
import 'package:booking/features/available_rooms/domain/repositories/available_rooms_repository.dart';
import 'package:booking/features/available_rooms/domain/usecases/add_booking_to_fire_store_use_case.dart';
import 'package:booking/features/available_rooms/domain/usecases/check_rate_use_case.dart';
import 'package:booking/features/available_rooms/domain/usecases/create_booking_use_case.dart';
import 'package:booking/features/booking/cubit/booking_cubit.dart';
import 'package:booking/features/booking/data/datasources/booking_remote_data_source.dart';
import 'package:booking/features/booking/data/repositories/booking_repository_impl.dart';
import 'package:booking/features/booking/domain/repository/booking_repository.dart';
import 'package:booking/features/booking/domain/usecases/get_my_bookings_use_case.dart';
import 'package:booking/features/booking/domain/usecases/update_my_booking.dart';
import 'package:booking/features/create_booking/cubit/create_booking_cubit.dart';
import 'package:booking/features/create_booking/data/datasources/create_biiking_remote_data_source.dart';
import 'package:booking/features/create_booking/data/repositories/create_booking_repository_impl.dart';
import 'package:booking/features/create_booking/domain/repositories/create_booking_repository.dart';
import 'package:booking/features/create_booking/domain/usecases/check_availability_use_case.dart';
import 'package:booking/features/home/cubit/home_cubit.dart';
import 'package:booking/features/hotels/cubit/hotels_cubit.dart';
import 'package:booking/features/hotels/data/datasources/hotels_remote_data_source.dart';
import 'package:booking/features/hotels/data/repositories/hotels_repository_impl.dart';
import 'package:booking/features/hotels/domain/repositories/hotels_repository.dart';
import 'package:booking/features/hotels/domain/usecases/facilities_use_case.dart';
import 'package:booking/features/hotels/domain/usecases/hotel_usecases.dart';
import 'package:booking/features/maps/cubit/maps_cubit.dart';
import 'package:booking/features/maps/data/datasources/maps_remote_data_source.dart';
import 'package:booking/features/maps/data/repositories/maps_repository_impl.dart';
import 'package:booking/features/maps/domain/repositories/maps_repository.dart';
import 'package:booking/features/maps/domain/usecases/places_suggestions_usecase.dart';
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
  di.registerLazySingleton<BookingCubit>(() => BookingCubit(
        getMyBookingsUseCase: di(),
        updateMyBookingUseCase: di(),
      ));
  di.registerLazySingleton<CreateBookingCubit>(
      () => CreateBookingCubit(checkAvailabilityUseCase: di()));
  di.registerLazySingleton<AvailableRoomsCubit>(() => AvailableRoomsCubit(
        checkRateUseCase: di(),
        createBookingUseCase: di(),
        addBookingToFirestoreUsecase: di(),
      ));
  di.registerLazySingleton<ProfileCubit>(() => ProfileCubit());
  di.registerLazySingleton<MapsCubit>(() => MapsCubit(
        placesSuggestionUsecase: di(),
        hotelsCubit: di(),
      ));

  /// DATA SOURCES
  di.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(bookingApi: di(), firebaseHelper: di()));
  di.registerLazySingleton<HotelsRemoteDataSource>(
      () => HotelsRemoteDataSourceImpl(bookingApi: di()));
  di.registerLazySingleton<BookingRemoteDataSource>(
      () => BookingRemoteDataSourceImpl(firebaseHelper: di()));
  di.registerLazySingleton<CreateBookingRemoteDataSource>(
      () => CreateBookingRemoteDataSourceImpl(bookingApi: di()));
  di.registerLazySingleton<AvailableRoomsRemoteDataSource>(
      () => AvailableRoomsRemoteDataSourceImpl(
            bookingApi: di(),
            firebaseHelper: di(),
          ));
  di.registerLazySingleton<MapsRemoteDataSource>(
      () => MapsRemoteDataSourceImpl(mapsApi: di()));

  /// REPOSITORIES
  di.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(authRemoteDataSource: di()));
  di.registerLazySingleton<HotelsRepository>(
      () => HotelsRepositoryImpl(hotelsRemoteDataSource: di()));
  di.registerLazySingleton<BookingRepository>(
      () => BookingRepositoryImpl(bookingRemoteDataSource: di()));
  di.registerLazySingleton<CreateBookingRepository>(
      () => CreateBookingRepositoryImpl(createBookingRemoteDataSource: di()));
  di.registerLazySingleton<AvailableRoomsRepository>(
      () => AvailableRoomsRepositoryImpl(availableRoomsRemoteDataSource: di()));
  di.registerLazySingleton<MapsRepository>(
      () => MapsRepositoryImpl(mapsRemoteDataSource: di()));

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

  di.registerLazySingleton<CheckAvailabilityUseCase>(
      () => CheckAvailabilityUseCase(createBookingRepository: di()));
  di.registerLazySingleton<CheckRateUseCase>(
      () => CheckRateUseCase(availableRoomsRepository: di()));
  di.registerLazySingleton<CreateBookingUseCase>(
      () => CreateBookingUseCase(availableRoomsRepository: di()));
  di.registerLazySingleton<AddBookingToFirestoreUseCase>(
      () => AddBookingToFirestoreUseCase(availableRoomsRepository: di()));
  di.registerLazySingleton<GetMyBookingsUseCase>(
      () => GetMyBookingsUseCase(bookingRepository: di()));
  di.registerLazySingleton<UpdateMyBookingUseCase>(
      () => UpdateMyBookingUseCase(bookingRepository: di()));
  di.registerLazySingleton<PlacesSuggestionsUsecase>(
      () => PlacesSuggestionsUsecase(mapsRepository: di()));

  /// APIs
  di.registerLazySingleton<BookingApi>(
      () => BookingApi(di(instanceName: 'booking-dio')));
  di.registerLazySingleton<MapsApi>(
      () => MapsApi(di(instanceName: 'maps-dio')));

  /// DIOs
  // di.registerSingleton<Dio>(
  //   _createAndSetupBookingDio(),
  //   instanceName: 'booking-dio',
  // );
  di.registerLazySingleton<Dio>(
    () => _createAndSetupBookingDio(),
    instanceName: 'booking-dio',
  );
  di.registerLazySingleton<Dio>(
    () => _createAndSetupMapsDio(),
    instanceName: 'maps-dio',
  );

  /// FIREBASE
  di.registerLazySingleton<FirebaseHelper>(() => FirebaseHelperImpl());
}

Dio _createAndSetupBookingDio() {
  Dio dio = Dio();

  dio.options
    ..baseUrl = BookingEndPoints.baseUrl
    ..responseType = ResponseType.plain
    ..headers = {
      'Api-key': BookingEndPoints.apiKey,
      // 'X-Signature': _generateSHA256(),
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

Dio _createAndSetupMapsDio() {
  Dio dio = Dio();

  dio.options
    ..baseUrl = MapsEndPoints.baseUrl
    ..responseType = ResponseType.plain
    ..connectTimeout = 20 * 1000
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
