// Project imports:
import 'package:subway_project_230704/setting/export+.dart';
import 'package:subway_project_230704/setting/export.dart';
import '../screen/screen_controller.dart';
/// 환승역에대한 정보를 저장하기 위한 구간임 사람들이 잘 안쓸것 같아 바꾸고싶음
class TransferIcon extends ConsumerStatefulWidget {
  const TransferIcon({super.key});

  @override
  ConsumerState<TransferIcon> createState() => _TransferIconState();
}

class _TransferIconState extends ConsumerState<TransferIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        if(nameT.isNotEmpty)
        {
          Get.dialog(
              AlertDialog(
                content: Container(
                  height: 90.w,
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
                              final filted = ref.watch(filtedarrivalProviderT);
                              return filted.when(
                                loading: () => LoadingBox('loading.....'),
                                error: (err, stack) =>
                                    LoadingBox('데이터를 불러올 수 없습니다'),
                                data: (data){
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TextFrame(
                                        comment: '\n$lineTT $nameT역\n',
                                      ),
                                      TextFrame(comment: data.upfirst.toString()),
                                      TextFrame(comment: data.uplast.toString()),
                                      TextFrame(comment: data.downfirst.toString()),
                                      TextFrame(comment: data.downlast.toString()),
                                    ],
                                  );
                                },
                              );
                            }),

                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(child: Text('')),
                          DialogButton(
                              onPressed: (){
                                box.remove('nameT');
                                box.remove('latT');
                                box.remove('lngT');
                                box.remove('engnameT');
                                box.remove('lineT');
                                box.remove('sublistT');
                                box.remove('lineTT');
                                box.remove('headingT');
                                Navigator.pop(context);
                              },
                              comment: 'Erase'),
                          DialogButton(
                              onPressed: (){
                                Navigator.pop(context);
                              },
                              comment: 'Check'),
                        ],
                      ),
                    ],
                  ),
                ),
              )
          );
        }
        else if((nameT.isEmpty)){
          Get.dialog(
              AlertDialog(
              content: Container(
                color: Colors.white,
                height: 73.5.w,  /// 0.27
                child: Column(
                  children: <Widget>[
                    DialogDesign(
                      designText: 'Transfer Station',
                    ),
                    SizedBox(
                      height: 1.2.h,
                    ),
                    InputSubway(
                      onSelected: (value){
                        ref.read(infoProvider.notifier).searchSubway(name: value);
                        Get.dialog(
                          LinePickerB(), ///LinePickerB
                        );
                      },
                    ),
                    SizedBox(
                      height: 10.6.h, /// 90정도
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: ElevatedButton(
                              onPressed: (){
                                ref.read(storeProviderA.notifier).storeSubData('T');
                                Navigator.of(context).pop();
                              },
                              child: TextFrame(comment: 'Done',color: Colors.black,),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
                                padding: MaterialStateProperty.
                                all(EdgeInsets.symmetric(horizontal: 10)),
                              ),
                            ),
                          ),

                        ),
                      ],
                    ),
                  ],
                ),
              ),
          )
          );
        }
      },

      icon: TransferIconB(),
    );
  }
}
