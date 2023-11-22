import 'package:flutter/material.dart';
import 'package:i15_app/screen/home/widgets/lockscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'i15',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Georgia',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/lockscreen', // 초기 라우트를 '/lockscreen'으로 설정
      routes: {
        '/lockscreen': (context) => LockScreen(), // 잠금 화면을 '/lockscreen' 경로에 매핑
        '/home': (context) => HomePage(), // 메인 화면을 '/home' 경로에 매핑
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('메인 화면'),
      ),
      body: Center(
        child: Text('앱의 메인 화면'),
      ),
    );
  }
}