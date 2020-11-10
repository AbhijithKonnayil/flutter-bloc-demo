import 'package:demo/irene_bloc/irene_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/home_bloc/home_bloc.dart';


class IrenePage extends StatefulWidget {
  @override
  _IrenePageState createState() => _IrenePageState();
}

class _IrenePageState extends State<IrenePage> {
  IreneBloc ireneannBloc;
  @override
  void initState() {
    
    super.initState();
     ireneannBloc = BlocProvider.of<IreneBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading:IconButton(


          icon: Icon(Icons.arrow_left),
          color: Colors.black,
          onPressed: () {
        Navigator.pop(context) ;
          },
        ),
      ),
      body: Center(
        child: BlocBuilder<IreneBloc, IreneState>(builder: (context, state) {
          print(state);
          if (state is IreneInitial)
            return Center(
              child: Container(
                  alignment: Alignment.center,
                  child: Column(children: [
                    Text("Irene Ann Zachariah"),
                    FlatButton(
                      child: Text("Show Email"),
                      onPressed: () =>
                          ireneannBloc.add(IreneEmailButtonClickedEvent()),
                    ),
                    FlatButton(
                        child: Text("Show Phone"),
                        onPressed: () =>
                            ireneannBloc.add(IrenePhoneButtonClickedEvent()))
                  ])),
            );
          else if (state is IreneEmailLoadState)
            return Container(
              
              
              child: Text("zaireneann740@gmail.com"),
             
              
             
                );
          else if (state is IrenePhoneLoadState)
            return Container(child: Text("9497106194"),
            
            );
        }),
      ),
    );
  }
}
