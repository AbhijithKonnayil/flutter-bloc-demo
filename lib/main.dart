import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:demo/home_bloc/home_bloc.dart';
import 'package:demo/home_page.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/cerin_bloc/cerin_bloc.dart';
import 'package:demo/pages/cerin_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) {
              return HomeBloc();
            },
          ),
          BlocProvider(
            create: (BuildContext context) {
              return AbhiBloc();
            },
          ),
          BlocProvider(
            create: (BuildContext context) {
              return CerinBloc();
            },
          ),
        ],
        child: MaterialApp(
          home: PageView(
            children: [
              HomePage(),
              AbhiPage(),
              CerinPage(),
            ],
          ),
        ),
      ),
    );
  }
}
