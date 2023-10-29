// Package imports:
import 'package:hive_flutter/adapters.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:subway_project_230704/model/route_model.dart';

// Project imports:
import '../../custom_widget/color_widget.dart';
import '../../custom_widget/loadingbox.dart';
import '../../custom_widget/route_animatedController.dart';
import '../../custom_widget/route_exit_button.dart';
import '../../data_provider/store_provider/route_store_porivder.dart';
import '../../data_provider/subordinate_provider/hive_route_provider.dart';
import '../../setting/export.dart';

class RouteSelectIcon extends ConsumerStatefulWidget {
  const RouteSelectIcon({super.key});

  @override
  ConsumerState<RouteSelectIcon> createState() => _RouteSelectIconState();
}

class _RouteSelectIconState extends ConsumerState<RouteSelectIcon> {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.dialog(
          AlertDialog(
            content: Container(
              height: 90.w,
              child: TextListTile(),
            ),
          ),
        );
      },
      icon: TransferIconB(),
    );
  }
}

class TextListTile extends ConsumerStatefulWidget {
  const TextListTile({super.key});

  @override
  ConsumerState<TextListTile> createState() => _TextListTileState();
}

class _TextListTileState extends ConsumerState<TextListTile> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          DialogDesign(designText: 'Subway Route'),
          SizedBox(height: 13.sp),
          ValueListenableBuilder(
            valueListenable: routeBox!.listenable(),
              builder: (context, box, _){
                if(routeBox?.keys.length == 0){
                  return RouteBox('이동 경로를 저장해주세요');
                } else {
                  final reversedKeys = routeBox?.keys.toList().reversed.toList();
                  return Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: reversedKeys?.length,
                        itemBuilder: (context, index){
                          final keys = reversedKeys![index];
                          final items = routeBox!.getAt(keys);
                          print(index);
                          return RouteController(
                            onTapA: (){
                              ref.read(routeStoreProvider.notifier).
                              routeStoreData(
                                SubRouteModel(
                                    routeA: items!.routeA,
                                    routeB: items.routeB),
                              );
                              recallroutemsg();
                              Navigator.pop(context);
                            },

                            nameA: '${items?.routeA.subName}',
                            colorLine: '${items?.routeA.lineUi}',
                            nameB: '${items?.routeB.subName}',

                            onTapB: (){
                              HiveRouteService.deleteRouteBox(index);
                              routemsg();
                              setState(() {});
                            },
                          );

                        }),
                  );
                }
              }
          ),
          CountTexteButton(count: routeBox!.keys.length.toString()),
        ],
      ),
    );
  }
}


