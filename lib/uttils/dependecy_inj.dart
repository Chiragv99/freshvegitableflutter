import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future init() async{
  await GetStorage.init("CleanMove");
}