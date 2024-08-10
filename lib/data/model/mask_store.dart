//클래스 생성
class MaskStore {
  final String name;
  final String address;
  double distance;
  final String remainStatus;
  //위도, 경도 추가
  final double latitude;
  final double longitude;

  //생성자 생성(Named Argument Constructor로 만듬)
  MaskStore({
    required this.name,
    required this.address,
    required this.distance,
    required this.remainStatus,
    required this.latitude,
    required this.longitude,
  });
}