import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:demo/alsam_bloc/alsam_bloc.dart';
import 'package:demo/azeem_bloc/azeem_bloc_bloc.dart';
import 'package:demo/home_bloc/home_bloc.dart';

import 'package:demo/nj_bloc/nj_bloc.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:demo/pages/nj_page.dart';
import 'package:demo/pages/abhishek_page.dart';
import 'package:demo/pages/alsam_page.dart';
import 'package:demo/pages/azeem_page.dart';
import 'package:demo/pages/heba_page.dart';
import 'package:demo/pages/irene_ann_page.dart';
import 'package:demo/pages/irene_page.dart';
import 'package:demo/pages/jobin_page.dart';
import 'package:demo/pages/joseph_page.dart';
import 'package:demo/pages/nea_page.dart';
import 'package:demo/pages/shibin_page.dart';
import 'package:demo/neabloc/nea_bloc.dart';


import 'package:demo/irene_ann_bloc/irene_bloc.dart';
import 'package:demo/irene_bloc/irene_bloc.dart';
import 'package:demo/jobin_bloc/jobin_bloc.dart';
import 'package:demo/joseph_bloc/joseph_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'abhishek_bloc/abhishek_bloc.dart';
import 'heba_bloc/heba_bloc.dart';
import 'shibin_bloc/shibin_bloc.dart';

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
                 BlocProvider(
            create: (BuildContext context) {
              return NeaBloc();
            },
          ),
           BlocProvider<NjBloc>(create: (BuildContext context) => NjBloc()),
            BlocProvider<AbhiBloc>(
                create: (BuildContext context) => AbhiBloc()),
            BlocProvider<JosephBloc>(
                create: (BuildContext context) => JosephBloc()),
            BlocProvider<ShibinBloc>(
                create: (BuildContext context) => ShibinBloc()),
            BlocProvider<AzeemBlocBloc>(
                create: (BuildContext context) => AzeemBlocBloc()),
            BlocProvider<IreneBloc>(
              create: (BuildContext context) {
                return IreneBloc();
              },
            ),
            BlocProvider<AbhishekBloc>(
                create: (BuildContext context) => AbhishekBloc()),
            BlocProvider<HebaBloc>(
                create: (BuildContext context) => HebaBloc()),
            BlocProvider<JobinBloc>(
                create: (BuildContext context) => JobinBloc()),
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
              AbhiPage(),
              AlsamPage(),
              IrenePage(),
              ShibinPage(),
              AzeemPage(),
              IreneAnnPage(),
              JobinPage(),
              HebaPage(),
              AbhishekPage(),
              JosephPage(),
               NeaPage(),
              NjPage(),
            ],
          )),
    );
  }
}