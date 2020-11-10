import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:demo/azeem_bloc/azeem_bloc_bloc.dart';
import 'package:demo/alsam_bloc/alsam_bloc.dart';
import 'package:demo/home_bloc/home_bloc.dart';
import 'shibin_bloc/shibin_bloc.dart';
import 'package:demo/home_page.dart';
import 'package:demo/irene_ann_bloc/irene_bloc.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:demo/pages/azeem_page.dart';
import 'package:demo/pages/shibin_page.dart';
import 'package:demo/pages/alsam_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:demo/irene_bloc/irene_bloc.dart';
import 'package:demo/pages/irene_page.dart';
import 'package:demo/pages/irene_ann_page.dart';

void main() => runApp(MyApp());

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
            BlocProvider<ShibinBloc>(
                create: (BuildContext context) => ShibinBloc()),
            BlocProvider<AzeemBlocBloc>(
                create: (BuildContext context) => AzeemBlocBloc()),
            BlocProvider<IreneBloc>(
              create: (BuildContext context) {
                return IreneBloc();
              },
            ),
            BlocProvider<AlsamBloc>(
                create: (BuildContext context) => AlsamBloc()),
                 BlocProvider(
            create: (BuildContext context) {
              return IreneAnnBloc();
            },
          ),
          ],
          child: PageView(
            children: [
              HomePage(),
              AbhiPage(),
              AlsamPage(),
              IrenePage(),
              ShibinPage(),
              AzeemPage(),
              IreneAnnPage()
            ],
          )),
    );
  }
}
