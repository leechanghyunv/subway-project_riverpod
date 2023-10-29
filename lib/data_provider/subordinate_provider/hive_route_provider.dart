// Package imports:
import 'package:hive/hive.dart';
import 'package:subway_project_230704/setting/export.dart';

// Project imports:
import '../../model/route_model.dart';
import '../../model/subFromHive_model.dart';
import '../../presentation/screen/screen_controller.dart';

Box<SubRouteModel>? routeBox;
Box<SubwayHiveModel>? subwayBox;

class HiveRouteService {

  static Future openRouteBox() async {
    routeBox = await Hive.openBox<SubRouteModel>('routeBox');
    subwayBox = await Hive.openBox<SubwayHiveModel>('subwayBox');
  }

  static Future putRouteBox(SubRouteModel subRouteModel) async {

    try {
      if (routeBox != null) {
        await routeBox!.add(subRouteModel);
      } else {
        print('routeBox is null');
      }
      if (routeBox != null) {
        print('routeBox!.values: ${routeBox!.values.toString()}');
      } else {
        print('routeBox is null');
      }
    } catch (e) {
      print(e.toString());
    }

  }


  static Future deleteRouteBox(int index) async {
    routeBox?.deleteAt(index);
  }


  static Future removeAllRouteBox() async {
    routeBox?.clear();
  }

}
