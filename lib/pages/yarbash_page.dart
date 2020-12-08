import 'package:demo/yarbash_bloc/yarbash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class YarbashPage extends StatefulWidget {
  @override
  _YarbashPageState createState() => _YarbashPageState();
}

class _YarbashPageState extends State<YarbashPage> {
  YarbashBloc yarbashBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    yarbashBloc = BlocProvider.of<YarbashBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(
        // ignore: missing_return
        child: BlocBuilder<YarbashBloc, YarbashState>(
          // ignore: missing_return
          builder: (context, state) {
            if (state is YarbashInitialState)
              return Center(
                child: Column(
                  children: [
                    Text('Yarbash Saleem'),
                    FlatButton(
                        onPressed: () {
                          yarbashBloc.add(YarbashEmailButtonClickedEvent());
                        },
                        child: Text('Show Email')),
                    FlatButton(
                        onPressed: () {
                          yarbashBloc.add(YarbashPhoneButtonClickedEvent());
                        },
                        child: Text('Show Phone Number'))
                  ],
                ),
              );
            else if (state is YarbashEmailShowState)
              return Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('yarbashsaleem98@gmail.com'),
                  FlatButton(
                    child: Text('back to home'),
                    onPressed: () {
                      yarbashBloc.add(YarbashBackButtonClickedEvent());
                    },
                  )
                ],
              ));
            else if (state is YarbashPhoneShowState)
              return Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('9895798267'),
                  FlatButton(
                    child: Text('back to home'),
                    onPressed: () {
                      yarbashBloc.add(YarbashBackButtonClickedEvent());
                    },
                  )
                ],
              ));
          },
        ),
      )),
    );
  }
}
