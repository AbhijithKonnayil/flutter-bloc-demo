import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:demo/home_bloc/home_bloc.dart';
import 'package:demo/home_page.dart';
import 'package:demo/jobin_bloc/jobin_bloc.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:demo/pages/jobin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            BlocProvider<HomeBloc>(
                create: (BuildContext context) => HomeBloc()),
            BlocProvider<AbhiBloc>(
                create: (BuildContext context) => AbhiBloc()),
            BlocProvider<JobinBloc>(
                create: (BuildContext context) => JobinBloc()),
          ],
          child: SafeArea(
            child: PageView(
              children: [
                HomePage(),
                AbhiPage(),
                JobinPage(),
              ],
            ),
          )),
    );
  }
}
