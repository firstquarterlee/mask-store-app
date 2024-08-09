import 'package:mask_store_app/data/model/mask_store.dart';

abstract interface class StoreRepository {
  //MaskStore의 리스트를 얻기위해 getStores() 메서드를 선언
  Future<List<MaskStore>> getStores();

}