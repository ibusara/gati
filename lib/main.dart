
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gati_app/views/screens/screen_welcome.dart';
import 'package:gati_app/views/widgets/custom_error.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'helpers/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(Duration(seconds: 0));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return GetMaterialApp(
          title: 'GATI',
          locale: Locale('en', 'US'),
          debugShowCheckedModeBanner: false,
          home: ScreenWelcome(),
          // home:ScreenLogin(),
          theme: ThemeData(
            fontFamily: 'Roboto',
            checkboxTheme: CheckboxThemeData(
              checkColor: MaterialStateProperty.all(Colors.white),
              fillColor: MaterialStateProperty.all(btnColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              side: BorderSide(color: Color(0xff585858), width: 1),
            ),
            appBarTheme: AppBarTheme(
              color: sfBgColor,
              elevation: 0,
              titleTextStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: "Roboto"),
              centerTitle: false,
              systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
              iconTheme: IconThemeData(color: Colors.black),
            ),
            dividerColor: hintColor,
            scaffoldBackgroundColor: sfBgColor,
            // backgroundColor:sfBgColor,
          ),
          builder: (context, widget) {
            ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
              return CustomError(errorDetails: errorDetails);
            };
            // return ScrollConfiguration(behavior: NoColorScrollBehavior(), child: widget!);
            // return widget!;
            return ScrollConfiguration(behavior: ScrollBehaviorModified(), child: widget!);
          },
        );
      },
    );
  }
}

class ScrollBehaviorModified extends ScrollBehavior {
  const ScrollBehaviorModified();

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    switch (getPlatform(context)) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.android:
        return const BouncingScrollPhysics();
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return const ClampingScrollPhysics();
    }
  }
}

// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   // If you're going to use other Firebase services in the background, such as Firestore,
//   // make sure you call `initializeApp` before using other Firebase services.
//
//   print("Handling a background message: ${message}");
// }

class NoColorScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}




