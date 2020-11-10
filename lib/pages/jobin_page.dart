import 'package:demo/jobin_bloc/jobin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JobinPage extends StatefulWidget {
  @override
  _JobinPageState createState() => _JobinPageState();
}

class _JobinPageState extends State<JobinPage> {
  JobinBloc jobinBloc;
  @override
  void initState() {
    super.initState();
    jobinBloc = BlocProvider.of<JobinBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<JobinBloc, JobinState>(builder: (context, state) {
          print(state);
          if (state is JobinInitial)
            return Center(
              child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Text("Jobin Biju"),
                  FlatButton(
                    child: Text("Show Email"),
                    onPressed: () =>
                        jobinBloc.add(JobinEmailButtonClickedEvent()),
                  ),
                  FlatButton(
                    child: Text("Show Phone"),
                    onPressed: () =>
                        jobinBloc.add(JobinPhoneButtonClickedEvent()),
                  ),
                ]),
              ),
            );
          else if (state is JobinEmailLoadState)
            return Container(
                child: Column(
              children: [
                Text("jobinbiju9090@gmail.com"),
                SizedBox(
                  height: 50,
                ),
                FlatButton(
                  child: Text("Back"),
                  onPressed: () => JobinBackButtonClickedEvent(),
                ),
              ],
            ));
          else if (state is JobinPhoneLoadState)
            return Container(
              child: Column(
                children: [
                  Text("8281392010"),
                  SizedBox(
                    height: 50,
                  ),
                  FlatButton(
                    child: Text("Back"),
                    onPressed: () => JobinBackButtonClickedEvent(),
                  ),
                ],
              ),
            );
        }),
      ),
    );
  }
}
