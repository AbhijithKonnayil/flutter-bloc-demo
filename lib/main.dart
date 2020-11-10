import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:demo/alsam_bloc/alsam_bloc.dart';
import 'package:demo/home_bloc/home_bloc.dart';
import 'package:demo/home_page.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:demo/pages/alsam_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:demo/irene_bloc/irene_bloc.dart';
import 'package:demo/pages/irene_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (BuildContext context) {
            return HomeBloc();
          },
        ),
        BlocProvider<AbhiBloc>(
          create: (BuildContext context) {
            return AbhiBloc();
          },
        ),
        BlocProvider<IreneBloc>(
          create: (BuildContext context) {
            return IreneBloc();
          },
        ),
        BlocProvider<AlsamBloc>(create: (BuildContext context) => AlsamBloc())
      ],
      child: MaterialApp(
          home: PageView(
        children: [HomePage(), AbhiPage(), AlsamPage(), IrenePage()],
      )),
    );
  }
}
