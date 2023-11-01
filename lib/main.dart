import 'package:flutter/material.dart';
import 'package:opentourguide/opentourguide.dart';

import 'onboarding.dart';
import 'theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runOpenTourGuide(
    config: OpenTourGuideConfig(
      appName: "Francis Marion University Campus Tour",
      appDesc:
          '''Francis Marion University Campus Tour is a GPS-based tour guide app for Francis Marion University built using OpenTourBuilder.''',
      baseUrl: "https://fsrv.fly.dev/v2",
      lightThemeData: lightThemeData,
      darkThemeData: darkThemeData,
    ),
    onboarding: (context, finish) {
      return Onboarding(finish: finish);
    },
  );
}
