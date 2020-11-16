import 'package:demo/main.dart';
import 'package:demo/nj_bloc/nj_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NjPage extends StatefulWidget {
  @override
  _NjPageState createState() => _NjPageState();
}

class _NjPageState extends State<NjPage> {
  NjBloc njBloc;
  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    njBloc = BlocProvider.of<NjBloc>(context);
    return MaterialApp(
      title: "Namratha's Page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Namratha's Page")),
        body: BlocBuilder <NjBloc, NjState> (
          builder : (context,state) {
            print(state);
            if (state is NjInitial) {       
              return Center(
              child: Column(children: [
                          Text("Contact Information"),
            
                          RaisedButton(
                            child: Text("Email"),
                            onPressed: (){
                              njBloc.add(EmailClickedEvent());
                            }
                          ),
            
                          RaisedButton(
                            onPressed: () {njBloc.add(PhoneClickedEvent());},
                            child: Text("Phone number"),
                          ),
            
                          RaisedButton(onPressed: (){njBloc.add(BackClickedEvent());},child: Text("Go back"),)
                        ],
                      ),
          
            );
            }
            else if(state is EmailClickedState){
              return Container(
                child: Text("namrathajacob@gmail.com"),
                alignment: Alignment.center,
              );}
            else if (state is PhoneClickedState) {
              return Container(
                child: Text("8075914972"),
              alignment: Alignment.center,
              );
            }
            
            else if (state is BackClickedState) {
              return(Text("Will go back")) ;
            }
                      
          }),
      )
    );
  }
}

