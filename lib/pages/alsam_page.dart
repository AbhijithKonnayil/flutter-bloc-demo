import 'package:demo/alsam_bloc/alsam_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlsamPage extends StatefulWidget {
  @override
  _AlsamPageState createState() => _AlsamPageState();
}

class _AlsamPageState extends State<AlsamPage> {
  AlsamBloc alsamBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    alsamBloc = BlocProvider.of<AlsamBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<AlsamBloc, AlsamState>(builder: (context, state) {
          print(state);
          if (state is AlsamInitial)
            return Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text("Alsam"),
                    FlatButton(
                      child: Text("Show Email"),
                      onPressed: () =>
                          alsamBloc.add(AlsamEmailButtonClickedEvent()),
                    ),
                    FlatButton(
                        child: Text("Show Phone"),
                        onPressed: () =>
                            alsamBloc.add(AlsamPhoneButtonClickedEvent()))
                  ])),
            );
          else if (state is AlsamEmailLoadState)
            return Container(child: Column(children: [Spacer(),
              Text("alsamsalim987@gmail.com"),
               FlatButton(
                        child: Text("Back"),
                        onPressed: ()=>
                            alsamBloc.add(BackButtonClickedEvent())
                        ),Spacer()



            ],)) ;
          else if (state is AlsamPhoneLoadState)
            return Container(child: Column(children: [Spacer(),
              Text("8281013710"),
               FlatButton(
                        child: Text("Back"),
                        onPressed: ()=>
                            alsamBloc.add(BackButtonClickedEvent())
                        ),
                        Spacer()



            ],)) ;
        }),
      ),
    );
  }
}