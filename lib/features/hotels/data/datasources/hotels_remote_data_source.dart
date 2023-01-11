import 'package:booking/core/api/dio_helper/dio_helper.dart';
import 'package:booking/features/hotels/data/models/facilities_body_model/facilities_body_model/facilities_body_model.dart';
import 'package:booking/features/hotels/data/models/facilities_response_model/facilites_response_model/facilities_response_model.dart';
import 'package:booking/features/hotels/data/models/hotels_body_model/hotels_body_model.dart';
import 'package:booking/features/hotels/data/models/hotels_response_model/hotels_response_model.dart';

abstract class HotelsRemoteDataSource {
  Future<HotelsResponseModel> getHotels(
      {required HotelsBodyModel hotelsBodyModel});

  Future<FacilitiesResponseModel> getFacilities(
      {required FacilitiesBodyModel facilitiesBodyModel});
}

class HotelsRemoteDataSourceImpl implements HotelsRemoteDataSource {
  final DioHelper dioHelper;

  HotelsRemoteDataSourceImpl({required this.dioHelper});
  @override
  Future<HotelsResponseModel> getHotels({
    required HotelsBodyModel hotelsBodyModel,
  }) {
    return dioHelper.getAllHotels(hotelsBodyModel: hotelsBodyModel.toJson());
  }

  @override
  Future<FacilitiesResponseModel> getFacilities(
      {required FacilitiesBodyModel facilitiesBodyModel}) {
    return dioHelper.getAllFacilities(
        facilitiesBodyModel: facilitiesBodyModel.toJson());
  }
}
