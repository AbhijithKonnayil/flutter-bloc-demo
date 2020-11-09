import 'package:demo/abhi_bloc/abhi_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AbhiPage extends StatefulWidget {
  @override
  _AbhiPageState createState() => _AbhiPageState();
}

class _AbhiPageState extends State<AbhiPage> {
  AbhiBloc abhiBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    abhiBloc = BlocProvider.of<AbhiBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AbhiBloc, AbhiState>(builder: (context, state) {
          print(state);
          if (state is AbhiInitial)
            return Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text("Abhijith"),
                    FlatButton(
                      child: Text("Show Email"),
                      onPressed: () =>
                          abhiBloc.add(AbhiEmailButtonClickedEvent()),
                    ),
                    FlatButton(
                        child: Text("Show Phone"),
                        onPressed: () =>
                            abhiBloc.add(AbhiPhoneButtonClickedEvent()))
                  ])),
            );
          else if (state is AbhiEmailLoadState)
            return Container(child: Text("iamabhijith.k@gmail.com"));
          else if (state is AbhiPhoneLoadState)
            return Container(child: Text("9495227127"));
        }),
      ),
    );
  }
}
