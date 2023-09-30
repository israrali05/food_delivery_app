import 'package:firebase_core/firebase_core.dart';
import 'package:food_delivery_app/consts/consts.dart';
import 'package:food_delivery_app/firebase_options.dart';
import 'screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce App',
      theme: ThemeData(
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(color: primaryColor),
        scaffoldBackgroundColor: scaffoldColor,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
