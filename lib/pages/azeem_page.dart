import 'package:demo/azeem_bloc/azeem_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AzeemPage extends StatefulWidget {
  @override
  _AzeemPageState createState() => _AzeemPageState();
}

class _AzeemPageState extends State<AzeemPage> {
  AzeemBlocBloc azeemBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    azeemBloc = BlocProvider.of<AzeemBlocBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AzeemBlocBloc, AzeemBlocState>(builder: (context, state) {
          // ignore: missing_return
          if (state is AzeemBlocInitial)
            return Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text("Azeem"),
                    FlatButton(
                      child: Text("Show Email"),
                      onPressed: () =>
                          azeemBloc.add(AzeemEmailButtonClickEvent()),
                    ),
                    FlatButton(
                        child: Text("Show Phone"),
                        onPressed: () =>
                            azeemBloc.add(AzeemPhoneButtonClickEvent()))
                  ])),
            );
          else if (state is AzeemEmailLoadState)
            return Container(child: Text("azeembasheera11@gmail.com"));
          else if (state is AzeemPhoneLoadState)
            return Container(child: Text("9400158182"));
        }),
      ),
    );
  }
}
