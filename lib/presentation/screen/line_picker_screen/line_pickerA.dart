// Project imports:
import '../../../setting/export+.dart';
import '../../../setting/export.dart';

/// main page에서 지하철역을 검색한 이후에 이 부분에서 몇호선을 선택할지 정해야함
class LinePickerA extends ConsumerWidget {
  LinePickerA({super.key});

  late String lineNumber;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    var filtered = ref.watch(infoProvider);
    return AlertDialog(
      content: StatefulBuilder(
          builder:  (__, StateSetter setState){
            return Container(
              height: filtered.length == 1 ? 270
                  : filtered.length == 2 ? 320
                  : filtered.length == 3 ? 370
                  : filtered.length == 4 ? 420
                  : filtered.length == 5 ? 470
                  : 520,
              alignment: Alignment.center,
              width: double.maxFinite,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: DialogDesign(
                        designText: '${filtered[0].subName}역'),
                  ),
                  Container(
                    color: Colors.grey[200],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        filtered.length, (index){
                          return CheckboxListTile(
                              value: filtered[index].isSelected,
                              activeColor: Colors.grey[600],
                              title: Row(
                                children: [
                                  PickerIcon(filtered[index].lineUi),
                                  SizedBox(width: 10,),
                                  TextFrame(comment: filtered[index].lineUi),
                                ],
                              ),
                              subtitle: Consumer(
                                builder: (context,ref,child){
                                  var lineList = filtered[index].subwayId.toString();
                                  final filted = ref.watch(filtedInPickerProvider(lineList));
                                  return filted.when(
                                    loading: () => const TextFrame(comment: 'loading.....'),
                                    error: (err, stack) => const TextFrame(comment: '데이터를 불러올 수 없습니다'),
                                    data: (data){
                                      return TextFramemin(
                                          comment: lineList.isNotEmpty
                                              ? '${filted.value!.upFirst!.split(
                                              "-")[1]}  -  ${filted.value!.downFirst!.split("-")[1]}'
                                              : '');
                                    },
                                  );
                                },
                              ),
                              onChanged: (value){
                                if(value != null){
                                  filtered = List.from(filtered.map((e) {
                                    if(e.lineUi == filtered[index].lineUi){
                                      lineNumber = filtered[index].lineUi;
                                      return e.copyWith(isSelected: true);
                                    } else {
                                      return e;
                                    }
                                  })
                                  );
                                }
                                setState(() {});
                              });
                      }

                      ),
                    ),
                  ),
                ],
              ),
            );
          }
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.
                      all(Colors.grey[300]),
                    ),
                    onPressed: (){
                      ref.read(infoProvider.notifier).searchSubway(
                          name: filtered[0].subName, line: lineNumber);
                      print('LinePickerA: $lineNumber ${filtered[0].subName}');
                      Navigator.of(context).pop();
                },
                    child: Text('Done',
                      style: commonmin,
                    ),
                ),
              ),
            ),
          ],
        ),
      ],

    );
  }

}

