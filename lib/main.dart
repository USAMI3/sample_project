import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:sample_project/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  bool isNetwork = await isNetworkAvailable();
  print(isNetwork);
  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample Project',
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      // Update app theme data here
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.routes,
      initialRoute: '/login',
    );
  }
}
