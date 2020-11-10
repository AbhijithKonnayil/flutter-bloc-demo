import 'package:demo/joseph_bloc/joseph_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JosephPage extends StatefulWidget {
  @override
  _JosephPageState createState() => _JosephPageState();
}

class _JosephPageState extends State<JosephPage> {
  JosephBloc josephBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    josephBloc = BlocProvider.of<JosephBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<JosephBloc, JosephState>(builder: (context, state) {
          print(state);
          if (state is JosephInitial)
            return widget(
              child: Center(
                child: Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Text("Joseph"),
                      FlatButton(
                        child: Text("Show Email"),
                        onPressed: () =>
                            josephBloc.add(JosephEmailButtonClickedEvent()),
                      ),
                      FlatButton(
                          child: Text("Show Phone"),
                          onPressed: () =>
                             josephBloc.add(JosephPhoneButtonClickedEvent()))
                    ])),
              ),
            );
          else if (state is JosephEmailLoadState)
            return Container(child: Text("jopellissery@ouytlook.com"));
          else if (state is JosephPhoneLoadState)
            return Container(child: Text("8078732179"));
        }),
      ),
    );
  }
}
