// Project imports:
import 'package:subway_project_230704/model/data_model.dart';
import '../model/subFromHive_model.dart';
import '../presentation/screen/screen_controller.dart';

String get name => box.read('name') ?? '';

String get nameA => box.read('nameA') ?? '';
String get codeA => box.read('codeA') ?? '';
String get engA => box.read('engnameA') ?? '';
String get lineA => box.read('lineA') ?? '';
String get lineAA => box.read('lineAA') ?? '';
String get sublistA => box.read('sublistA') ?? '';
String get headA => box.read('headingA') ?? '';
double get latA => box.read('latA') ?? 0.0;
double get lngA => box.read('lngA') ?? 0.0;

String get nameB => box.read('nameB') ?? '';
String get codeB => box.read('codeB') ?? '';
String get engB => box.read('engnameB') ?? '';
String get lineB => box.read('lineB') ?? '';
String get lineBB => box.read('lineBB') ?? '';
String get sublistB => box.read('sublistB') ?? '';
String get headB => box.read('headingB') ?? '';
double get latB => box.read('latB') ?? 0.0;
double get lngB => box.read('lngB') ?? 0.0;

String get nameT => box.read('nameT') ?? '';
String get codeT => box.read('codeT') ?? '';
String get engT => box.read('engnameT') ?? '';
String get lineT => box.read('lineT') ?? 'Line2';
String get lineTT => box.read('lineTT') ?? '';
String get sublistT => box.read('sublistT') ?? '';
String get headT => box.read('headingT') ?? '';
double get latT => box.read('latT') ?? 0.0;
double get lngT => box.read('lngT') ?? 0.0;

String get des1 => box.read('destination1') ?? '';
String get des2 => box.read('destination2') ?? '';

String get sub1 => box.read('subNumber1') ?? '3728';
String get sub2 => box.read('subNumber2') ?? '3728';

String get state1 => box.read('subState1') ?? '99';
String get state2 => box.read('subState2') ?? '99';

String get trainstate1 => box.read('state1') ?? 'NOR(S)';
String get trainstate2 => box.read('state2') ?? 'NOR(S)';

SubwayHiveModel get modelA => SubwayHiveModel(
    subName: nameA, engName: engA, lat: latA, lng: lngA,
    lineUi: lineA, subwayId: int.tryParse(sublistA) ?? 0000,
    line: lineAA, heading: headA, code: codeA);

SubwayHiveModel get modelB => SubwayHiveModel(
    subName: nameB, engName: engB, lat: latB, lng: lngB,
    lineUi: lineB, subwayId: int.tryParse(sublistB) ?? 0000,
    line: lineBB, heading: headB, code: codeB);

