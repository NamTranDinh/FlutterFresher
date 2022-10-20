import 'package:demo_app/CallApi/pages/home_page.dart';
import 'package:demo_app/CallApi/services/request_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApiMain extends StatelessWidget {

  const ApiMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
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
          child: HomePage(),
        ),
      ),
    );
  }
}

AppBar _appBar(BuildContext context) {
  return AppBar(
    title: const Text('App CRUD'),
    centerTitle: true,
    leading: IconButton(
      icon: const Icon(Icons.home),
      tooltip: 'Home',
      onPressed: () {
        _showSnackBar(context, 'Home');
      },
    ),
    actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.add),
        tooltip: 'Add new product',
        onPressed: () {
          _showSnackBar(context, 'Add new product');
        },
      ),
    ],
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
