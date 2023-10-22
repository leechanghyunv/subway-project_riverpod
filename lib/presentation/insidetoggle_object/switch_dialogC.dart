// Project imports:
import 'package:subway_project_230704/setting/export+.dart';
import 'package:subway_project_230704/setting/export.dart';
import '../../data_provider/subordinate_provider/weather_provider.dart';

class SwitchDialogC extends ConsumerStatefulWidget {

   SwitchDialogC({super.key});

  @override
  ConsumerState<SwitchDialogC> createState() => _SwitchDialogCState();
}

class _SwitchDialogCState extends ConsumerState<SwitchDialogC> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final weather = ref.watch(weatherProvider);
    final subdata = ref.watch(infoProvider);
    final svg = ref.watch(svgProvider);

    double textSize = 3.6.w;
    return Container(
      height: Device.aspectRatio >= 0.5 ? 80.w : 91.w,
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogDesign(
            designText: 'RealTime Arrival',
          ),
          Container(
            color: Colors.grey[100],
            width: double.maxFinite,
            child: Consumer(
                builder: (context,ref,child){
                  final filted = ref.watch(filtedArrivalProvider(
                      subdata.first.subwayId.toString()));
                  return filted.when(
                    loading: () => LoadingBox('loading'),
                    error: (err, stack) => LoadingBox('데이터를 불러올 수 없습니다'),
                    data: (data){
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFrame(
                            comment: '\n${subdata.first.line} ${subdata.first.subName}역\n',
                          ),
                          TextFrame(comment: data.upFirst.toString()),
                          TextFrame(comment: data.upLast.toString()),
                          TextFrame(comment: data.downFirst.toString()),
                          TextFrame(comment: data.downLast.toString()),
                        ],
                      );
                    },
                  );
            }),
          ),
          Container(
            width: double.maxFinite,
            color: Colors.white,
            child: Row(
              children: [
                svg.when(
                  loading: () => SwitchLoading(),
                  error: (err, stack) => Icon(Icons.question_mark),
                  data: (data){
                    return data;
                  },
                ),
                SizedBox(width: 5,),
                weather.when(
                  loading: () => SwitchLoading(),
                  error: (err, stack) => TextFrame(comment: err.toString()),
                  data: (data){
                    return Container(
                        color: Colors.white,
                        child: Text(data.first.description,
                          style: TextStyle(
                            fontSize: textSize,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                    );
                  },
                ),
                const Expanded(child: Text('')),

                PopupMenuButton(
                  itemBuilder: (BuildContext context){
                    return ref.watch(infoProviderB).map((e){
                      return PopupMenuItem(
                          value: e.lineUi,
                          child: TextFrame(comment: e.lineUi)
                      );
                    }).toList();
                  },
                  child: const Icon(Icons.menu),
                  onSelected: (value){
                    print(value);
                    ref.read(infoProvider.notifier).
                    searchSubway(name: subdata.first.subName,line: value); // line: value
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}




