
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:subway_project_230704/model/route_model.dart';

import '../../model/code_model.dart';
import '../../presentation/screen/screen_controller.dart';
import '../../repository/restApi_room.dart';

final apiservice = SeoulApiService.create();

Future<String> hiveCodeProvider (String name,String line) async {

  final filted = name.replaceAll(RegExp(r'\([^()]*\)'), '');
  final response = await apiservice.getCode(filted);

  if(response.statusCode == 200){
    final List<dynamic> jsonBody = jsonDecode(response.body)['SearchInfoBySubwayNameService']['row'];
    List<CodeModel> codeList = jsonBody.map((e) => CodeModel.fromJson(e)).toList();
    final index = codeList.where((e) => e.line == line);
    print('${name} ${line} ${index.first.stationCd}');
    return index.first.stationCd;
  }
  throw Exception('Failed to load code data');
}

class RouteStoreController extends StateNotifier<List<SubRouteModel>> {
  RouteStoreController() : super([]);

  final apiservice = SeoulApiService.create();

Future<void> routeStoreData(SubRouteModel model) async {

  var infoA = model.routeA;
  var infoB = model.routeB;

  var resultE =  await hiveCodeProvider(infoA.subName, infoA.line);
  var resultS =  await hiveCodeProvider(infoB.subName, infoB.line);

  print('infoA/infoB: ${infoA.subName} ${infoB.subName}');

  await box.write('nameA',infoA.subName);
  await box.write('latA',infoA.lat);
  await box.write('lngA',infoA.lng);
  await box.write('engnameA',infoA.engName);
  await box.write('lineA',infoA.lineUi);
  await box.write('sublistA',infoA.subwayId.toString());
  await box.write('lineAA',infoA.line);
  await box.write('headingA',infoA.heading);
  await box.write('codeA',resultE);

  await box.write('nameB',infoB.subName);
  await box.write('latB',infoB.lat);
  await box.write('lngB',infoB.lng);
  await box.write('engnameB',infoB.engName);
  await box.write('lineB',infoB.lineUi);
  await box.write('sublistB',infoB.subwayId.toString());
  await box.write('lineBB',infoB.line);
  await box.write('headingB',infoB.heading);
  await box.write('codeB',resultS);




}

}

final routeStoreProvider = StateNotifierProvider<
    RouteStoreController,List<SubRouteModel>>((ref){
 return RouteStoreController();
});

