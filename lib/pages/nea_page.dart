import 'package:demo/neabloc/nea_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NeaPage extends StatefulWidget {
  @override
  _NeaPageState createState() => _NeaPageState();
}

class _NeaPageState extends State<NeaPage> {
  NeaBloc neaBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    neaBloc = BlocProvider.of<NeaBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<NeaBloc, NeaState>(builder: (context, state) {
          print(state);
          if (state is NeaInitial)
            return Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text("Neha Ajith"),
                    FlatButton(
                      child: Text("Show Email"),
                      onPressed: () =>
                          neaBloc.add(NeaEmailId()),
                    ),
                    FlatButton(
                        child: Text("Show Phone"),
                        onPressed: () =>
                            neaBloc.add(NeaPhoneNumber()))
                  ])),
            );
          else if (state is NeaEmailIdState)
            return Scaffold(
              appBar: AppBar(
                title: Text("Nea Email"),
                leading: IconButton(
                  onPressed: () =>
                      neaBloc.add(NeaBackButtonClickedEvent()),
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
                body: Text("nehaajith27@gmail.com"));
          else if (state is NeaPhoneNumberState)
            return Scaffold(
              appBar: AppBar(
                title: Text("Nea Phone Number"),
                leading: IconButton(
                    onPressed: () =>
                        neaBloc.add(NeaBackButtonClickedEvent()),
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              body: Text("8089666720"));
        }),
      ),
    );
  }
}
