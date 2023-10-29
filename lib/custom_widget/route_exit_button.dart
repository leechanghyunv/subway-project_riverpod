
import '../setting/export.dart';

class CountTexteButton extends StatefulWidget {

  final String count;

  const CountTexteButton({super.key, required this.count});

  @override
  State<CountTexteButton> createState() => _CountTexteButtonState();
}

class _CountTexteButtonState extends State<CountTexteButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.maxFinite,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
                child: TextFrame(comment: '${widget.count} Route')),
          ),
        ],
      ),
    );
  }
}
