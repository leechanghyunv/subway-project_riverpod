// Package imports:
import 'package:hive_flutter/adapters.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;
import 'package:timezone/data/latest.dart' as tz;

// Project imports:
import 'package:subway_project_230704/data_provider/subordinate_provider/hive_route_provider.dart';
import 'package:subway_project_230704/model/route_model.dart';
import 'package:subway_project_230704/presentation/screen/screen_controller.dart';
import 'package:subway_project_230704/setting/export+.dart';
import 'package:subway_project_230704/setting/export.dart';
import 'model/subFromHive_model.dart';
import 'setting/firebase_options.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ChipModelAdapter());
  Hive.registerAdapter(SubwayHiveModelAdapter());
  Hive.registerAdapter(SubRouteModelAdapter());
  HiveRouteService.openRouteBox();
  HiveService.openBox();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  tz.initializeTimeZones();
  await _initialize();
  GoogleSheetsData.init();
  runApp(
      ProviderScope(
          observers: [
            Logger(),
          ],
          child: const MyApp()
      ),
  );

  await GetStorage.init();
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}

Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(
      clientId: naverId,
      onAuthFailed: (ex) => log("********* 네이버맵 인증오류 : $ex *********"));
}

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase<Object?> provider, Object? previousValue,
      Object? newValue, ProviderContainer container) {
    print('[Updated] : $provider');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]
    );
    return ResponsiveSizer(
      builder: (context, orientation, screenType){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: ScreenController(),
        );
      }
    );
  }
}

