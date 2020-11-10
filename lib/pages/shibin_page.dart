import 'package:demo/shibin_bloc/shibin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShibinPage extends StatefulWidget {
  @override
  _ShibinPageState createState() => _ShibinPageState();
}

class _ShibinPageState extends State<ShibinPage> {
  ShibinBloc shibinBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shibinBloc = BlocProvider.of<ShibinBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<ShibinBloc, ShibinState>(builder: (context, state) {
          print(state);
          if (state is ShibinInitial)
            return Center(
                child: Container(
                    alignment: Alignment.center,
                    child: Column(children: [
                      Text('Shibin'),
                      FlatButton(
                        onPressed: () =>
                            shibinBloc.add(ShibinEmailButtonClickedEvent()),
                        child: Text('Show Email'),
                      ),
                      FlatButton(
                        onPressed: () =>
                            shibinBloc.add(ShibinPhoneButtonClickedEvent()),
                        child: Text('Show Phone'),
                      )
                    ])));
          else if (state is ShibinEmailLoadState)
            return Container(
              child: Text('muhammedshibin96@gmail.com'),
            );
          else if (state is ShibinPhoneLoadState)
            return Container(
              child: Text('7025365862'),
            );
        }),
      ),
    );
  }
}
