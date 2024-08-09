import 'package:mask_store_app/data/model/location.dart';

//인터페이스 생성
abstract interface class LocationRepository {
  //위치 정보를 얻기위해 getLocation() 메서드를 선언
  Future<Location> getLocation();
}