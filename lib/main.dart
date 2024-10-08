import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app/pages/home/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://ideotvfzayisxmnrejmv.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlkZW90dmZ6YXlpc3htbnJlam12Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mjg0Mjg0OTUsImV4cCI6MjA0NDAwNDQ5NX0.Kq-bCjRsF0SlTtFF5tZxicqNXQs4BCP5KJDBCKcuzOg',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task APP',
      themeMode: ThemeMode.light,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
