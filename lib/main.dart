import 'package:bloc/bloc.dart';
import 'package:booking/app/app.dart';
import 'package:booking/app/bloc_observer.dart';
import 'package:booking/app/injector.dart';
import 'package:booking/core/hive/hive_helper.dart';
import 'package:booking/core/utils/app_functions.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding();
  await GetStorage.init();
  await HiveHelper.init();
  setupGetIt();
  bool b = HiveHelper.getCurrentUser() != null;
  debugPrint("==================>$b");
  runApp(const MyApp());
  debugPrint(AppFunctions.generateSHA256());
  Bloc.observer = MyBlocObserver();
}
