import 'package:demo/home_bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child: Text(data),
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
