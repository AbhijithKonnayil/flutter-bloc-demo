
import 'package:demo/heba_bloc/heba_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HebaPage extends StatefulWidget {
  @override
  _HebaPageState createState() => _HebaPageState();
}

class _HebaPageState extends State<HebaPage> {
  HebaBloc hebaBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    hebaBloc = BlocProvider.of<HebaBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<HebaBloc, HebaState>(builder: (context, state) {
          print(state);
          if (state is HebaInitial)
            return Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text("Heba"),
                    FlatButton(
                      child: Text("Show Email"),
                      onPressed: () =>
                          hebaBloc.add(HebaEmailButtonClickedEvent()),
                    ),
                    FlatButton(
                        child: Text("Show Phone"),
                        onPressed: () =>
                            hebaBloc.add(HebaPhoneButtonClickedEvent()))
                  ])),
            );
          else if (state is HebaEmailLoadState)
            return Container(child: Column(
              children: [
                Text("fansahfs@gmail.com"),
                SizedBox(height: 50,),
                FlatButton(onPressed:() => hebaBloc.add(HebaBackButtonClickedEvent()),
                    child: Text('Back'))
              ],
            ));
          else if (state is HebaPhoneLoadState)
            return Container(child: Column(
              children: [
                Text("9526052429"),
                SizedBox(height: 50,),
                FlatButton(onPressed:() => hebaBloc.add(HebaBackButtonClickedEvent()),
                    child: Text('Back'))
              ],
            ));
        }),
      ),
    );
  }
}
