import 'package:demo/home_bloc/home_bloc.dart';
import 'package:demo/irene_bloc/irene_bloc.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/pages/irene_page.dart';
import 'package:demo/pages/alsam_page.dart';
import 'package:demo/irene_ann_bloc/irene_bloc.dart';
import 'package:demo/pages/abhi_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/irene_ann_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc homeBloc;
  @override
  void initState() {
    super.initState();
    homeBloc = BlocProvider.of<HomeBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeInitial) {
            return buildInitalUi();
          } else if (state is HomeLoadingState) {
            return Center(child: CircularProgressIndicator());
          } else if (state is HomeDataLoadSuccessState) {
            return buildDataLoadSuccessUi(state.data);
          } else if (state is HomeDataLoadFailureState) {
            return buildDataLoadFailureUi(state.message);
          }
        },
      ),
    );
  }

  Widget buildInitalUi() {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (p) => AbhiPage(),
                  ));
            },
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Abhijith K"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              BlocProvider<IreneBloc>(
                create: (context) => IreneBloc(),
              );
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (p) => IrenePage(),
                  ));
            },
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Irene Ann Zachariah"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              BlocProvider<IreneBloc>(
                create: (context) => IreneBloc(),
              );
              Navigator.push(
                  context, MaterialPageRoute(builder: (p) => AlsamPage()));
              BlocProvider<IreneAnnBloc>(
                create: (context) => IreneAnnBloc(),
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (p) => IreneAnnPage(),
                ),
              );
            },
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Irene Anna Kurien"),
              ),
            ),
          ),
        ],
      ),
    );
    return Center(
      child: FlatButton(
        color: Colors.blue,
        child: Text("Load Data"),
        onPressed: () {
          homeBloc.add(DataLoadButtonClickedEvent());
        },
      ),
    );
  }

  Widget buildDataLoadSuccessUi(String data) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {},
            child: Card(
              child: Text("Abhijith K"),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDataLoadFailureUi(String msg) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Text(msg),
      ),
    );
  }
}
