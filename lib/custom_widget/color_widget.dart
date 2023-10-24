import 'package:responsive_sizer/responsive_sizer.dart';
import '../presentation/screen/screen_controller.dart';
import '../setting/export.dart';

Widget ColorContainer(String line) => Container(
  color: headingColor(line),
);

Widget PickerIcon(String line) =>
    Icon(Icons.square,
      color: headingColor(line),
    );

Widget TransferIconB() => Icon(Icons.cached_rounded,
  color: headingColor(box.read('lineT') ?? ''),
  size: 6.w,
);

Color headingColor (String heading) {
  return  heading == 'Line1' ? Color(0xff2a4193)
      : heading == 'Line2' ? Color(0xff027a31)
      : heading == 'Line3' ? Color(0xffd75e02)
      : heading == 'Line4' ? Color(0xff028bb9)
      : heading == 'Line5' ? Color(0xff9637b6)
      : heading == 'Line6' ? Color(0xff885408)
      : heading == 'Line7' ? Color(0xff525d02)
      : heading == 'Line8' ? Color(0xfff62d37)
      : heading == 'Line9' ? Color(0xff916a2a)
      : heading == '서해' ? Color(0xff8FC31F)
      : heading == '공항철도' ? Color(0xff0090D2)
      : heading == '경의선' ? Color(0xff77C4A3)
      : heading == '경춘선' ? Color(0xff0C8E72)
      : heading == '수인분당' ? Color(0xFFE7E727)
      : heading == '신분당' ? Color(0xffD4003B)
      : heading == '경강선' ? Color(0xff003DA5)
      : heading == '인천1선' ? Color(0xff7CA8D5)
      : heading == '인천2선' ? Color(0xffED8B00)
      : heading == '에버라인' ? Color(0xff6FB245)
      : heading == '의정부' ? Color(0xffFDA600)
      : heading == '우이신설' ? Color(0xffB7C452)
      : heading == '김포골드' ? Color(0xffA17800)
      : Colors.black; /// 신림
}