import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:subway_project_230704/custom_widget/common_text.dart';

import '../setting/export.dart';
import 'color_widget.dart';

class RouteController extends StatefulWidget {
  final void Function()? onTapA;
  final void Function()? onTapB;
  final String colorLine;
  final String nameA;
  final String nameB;

  const RouteController(
      {super.key,
      this.onTapA,
      required this.nameA,
      required this.nameB,
      this.onTapB, required this.colorLine});

  @override
  State<RouteController> createState() => _RouteControllerState();
}

class _RouteControllerState extends State<RouteController> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 2),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: widget.onTapA,
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.circle,size: 12.sp,color: headingColor(widget.colorLine),),
                          SizedBox(width: 10.sp),
                          Text(widget.nameA, style: subStyle1
                          ),
                        ],
                      ),
                      SizedBox(height: 11.sp),
                      Text('from: ${widget.nameB}',style: subStyle
                      ),
                    ],
                  ),

                  const Expanded(child: Text('')),
                  GestureDetector(
                    onTap: widget.onTapB,
                    child: Icon(Icons.remove,
                        color: Colors.grey[600], size: 18.sp),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
