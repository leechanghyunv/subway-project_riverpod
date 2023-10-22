// Project imports:
import 'package:subway_project_230704/setting/export.dart';

/// 지하철의 이름을 검색한 뒤에 구체적인 정보를 필터링하는 구간임
class DataController extends StateNotifier<List<SubwayModel>>{

  final AsyncValue<List<SubwayModel>> data;

  DataController(this.data) : super([]);

  void searchSubway({required name, String? line}) {
    data.whenData((value){
      final searchResults = value.where((e){
        if(line != null){
          return e.subName == name && e.lineUi == line;
        } else {
          return e.subName == name;
        }
      }
      ).toList();
      print('InfoProvider 저장완료 ');
      state = searchResults;
    });
  }

}
final infoProvider = StateNotifierProvider<DataController,
    List<SubwayModel>>((ref){
  final database = ref.watch(dataProviderInside);
  return DataController(database);
});

final infoProviderB = StateNotifierProvider<DataController, /// popupmenu를 위한 가짜 프로바이더??? 사실상 기능없음
    List<SubwayModel>>((ref){
  final database = ref.watch(dataProviderInside);
  return DataController(database);
});

