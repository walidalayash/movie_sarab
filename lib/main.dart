import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:movie/ui/root.dart';
import 'package:provider/provider.dart';

import 'core/repositories/moive_repository.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBYXBWMcTDL7mbEWe4kRuKV7H4FPSFDkW0",
      appId: "1:57966257093:android:7afbeb703d148e2a96e1ac",
      messagingSenderId: "57966257093",
      projectId: "movie-eb8f5",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create:(_)=> MoviesRepository())
    ],
    child:
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const Root(),
    ));
  }
}
