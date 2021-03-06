import 'package:demo/irene_ann_bloc/irene_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IreneAnnPage extends StatefulWidget {
  @override
  _IreneAnnPageState createState() => _IreneAnnPageState();
}

class _IreneAnnPageState extends State<IreneAnnPage> {
  IreneAnnBloc ireneBloc;
  @override
  void initState() {
    super.initState();
    ireneBloc = BlocProvider.of<IreneAnnBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<IreneAnnBloc, IreneAnnState>(
          builder: (context, state) {
            print(state);
            if (state is IreneInitial)
              return Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Text(
                        "Irene Anna Kurien",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      RaisedButton(
                        child: Text("Show Email"),
                        onPressed: () => ireneBloc.add(
                          IreneEmailButtonClickedEvent(),
                        ),
                      ),
                      RaisedButton(
                        child: Text("Show Phone"),
                        onPressed: () => ireneBloc.add(
                          IrenePhoneButtonClickedEvent(),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
            else if (state is IreneEmailLoadState)
              return SafeArea(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          onPressed: () =>
                              ireneBloc.add(IreneBackButtonClickedEvent()),
                          child: Text(
                            "x",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text("irenekurien01@gmail.com"),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
            else if (state is IrenePhoneLoadState)
              return SafeArea(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          onPressed: () =>
                              ireneBloc.add(IreneBackButtonClickedEvent()),
                          child: Text(
                            "x",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text("6282735500"),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
          },
        ),
      ),
    );
  }
}
