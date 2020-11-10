import 'package:demo/abhishek_bloc/abhishek_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AbhishekPage extends StatefulWidget {
  @override
  _AbhishekPageState createState() => _AbhishekPageState();
}

class _AbhishekPageState extends State<AbhishekPage> {
  AbhishekBloc abhishekBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    abhishekBloc = BlocProvider.of<AbhishekBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: Center(
        // ignore: missing_return
        child: BlocBuilder<AbhishekBloc, AbhishekState>(
          // ignore: missing_return
          builder: (context, state) {
            if (state is AbhishekInitialState)
              return Center(
                child: Column(
                  children: [
                    Text('Abhishek K K'),
                    FlatButton(
                        onPressed: () {
                          abhishekBloc.add(AbhishekEmailButtonClickedEvent());
                        },
                        child: Text('Show Email')),
                    FlatButton(
                        onPressed: () {
                          abhishekBloc.add(AbhishekPhoneButtonClickedEvent());
                        },
                        child: Text('Show Phone Number'))
                  ],
                ),
              );
            else if (state is AbhishekEmailShowState)
              return Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('abhishekkarunakaran100@gmail.com'),
                  FlatButton(
                    child: Text('back to home'),
                    onPressed: () {
                      abhishekBloc.add(AbhishekBackButtonClickedEvent());
                    },
                  )
                ],
              ));
            else if (state is AbhishekPhoneShowState)
              return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('6238612335'),
                      FlatButton(
                        child: Text('back to home'),
                        onPressed: () {
                          abhishekBloc.add(AbhishekBackButtonClickedEvent());
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
