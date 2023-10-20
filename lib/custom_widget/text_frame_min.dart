// Project imports:
import '../setting/export+.dart';
import '../setting/export.dart';

class TextFramemin extends StatelessWidget {

  final String comment;
  final Color? color;

  const TextFramemin({super.key, required this.comment, this.color});

  @override
  Widget build(BuildContext context) {
    return Text(comment,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 2.4.w,
        color: color,
    ),
    );
  }
}


