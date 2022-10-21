import 'package:demo_app/CallApi/blocs/bloc_crud.dart';
import 'package:demo_app/CallApi/blocs/events/crud_events.dart';
import 'package:demo_app/CallApi/blocs/states/crud_states.dart';
import 'package:demo_app/CallApi/services/request_api.dart';
import 'package:demo_app/CallApi/ui/pages/crud_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'ui/pages/home_page.dart';

class ApiMain extends StatelessWidget {

  const ApiMain({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BlocCrud(),
      child: BlocBuilder<BlocCrud, CrudSates>(
        buildWhen: (prev, state) => prev.runtimeType != state.runtimeType,
        builder: (context, state) {
          final BlocCrud blocCrud = context.read<BlocCrud>();
          Widget childHomePage = checkChildHomePage(state);
          return Scaffold(
            appBar: _appBar(context, state, blocCrud),
            floatingActionButton: _showFloatingActionButton(blocCrud),
            body: SafeArea(
              /// Takes a Create function that is responsible for creating
              /// the repository and a child which will have access to the repository
              /// via [RepositoryProvider.of(context)].
              ///
              /// It is used as a dependency injection (DI) widget
              /// so that a single instance of a repository can be provided to
              /// multiple widgets within a subtree.
              child: RepositoryProvider(
                create: (context) => RequestApi(),
                child: childHomePage,
              ),
            ),
          );
        },
      ),
    );
  }

}

AppBar _appBar(BuildContext context, CrudSates state,BlocCrud blocCrud) {
  final Widget icon;
  if(state is OnLickedAddAccStates){
    icon = const Icon(Icons.arrow_back_ios);
  }else{
    icon = const Icon(Icons.logo_dev);
  }
  return AppBar(
    title: const Text('App CRUD'),
    centerTitle: true,
    backgroundColor: Colors.green,
    leading: IconButton(
      icon: icon,
      tooltip: 'Home',
      onPressed: () {
        // _showSnackBar(context, 'Home');
        if(state is OnLickedAddAccStates){
          blocCrud.add(OnCLickBackHomeEvent());
        }
      },
    ),
  );
}

FloatingActionButton _showFloatingActionButton(BlocCrud blocCrud) {
  return FloatingActionButton(
    onPressed: () {
      // Add your onPressed code here!
      // blocCrud.add(OnCLickAddAccountEvent());
      /// Test api

      RequestApi.postData();

    },
    backgroundColor: Colors.green,
    child: const Icon(Icons.add),
  );
}

void _showSnackBar(BuildContext context, String mess) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(mess),
    duration: const Duration(seconds: 3),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: () {},
    ),
  ));
}
Widget checkChildHomePage(CrudSates state){
  if(state is OnLickedAddAccStates){
    return const CrudPage();
  }
  return const HomePage();
}
