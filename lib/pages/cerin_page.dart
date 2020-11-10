import 'package:flutter/material.dart';

import 'package:demo/cerin_bloc/cerin_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CerinPage extends StatefulWidget {
  @override
  _CerinPageState createState() => _CerinPageState();
}

class _CerinPageState extends State<CerinPage> {
  CerinBloc CerinBloc;
  @override
  void initState() {
    super.initState();
    CerinBloc = BlocProvider.of<CerinBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CerinBloc, CerinState>(
          builder: (context, state) {
            print(state);
            if (state is CerinInitial)
              return Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Text(
                        "Cerin Sara Santhosh",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      RaisedButton(
                        child: Text("Show Email"),
                        onPressed: () => CerinBloc.add(
                          IreneEmailButtonClickedEvent(),
                        ),
                      ),
                      RaisedButton(
                        child: Text("Show Phone"),
                        onPressed: () => CerinBloc.add(
                          IrenePhoneButtonClickedEvent(),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
            else if (state is CerinEmailLoadState)
              return SafeArea(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          onPressed: () =>
                              ireneBloc.add(CerinBackButtonClickedEvent()),
                          child: Text(
                            "x",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text("saracerin96@gmail.com"),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              );
            else if (state is CerinPhoneLoadState)
              return SafeArea(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: FlatButton(
                          onPressed: () =>
                              ireneBloc.add(CerinBackButtonClickedEvent()),
                          child: Text(
                            "x",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Text("8156871717"),
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
