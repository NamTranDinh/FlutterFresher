import 'package:demo_app/CallApi/blocs/bloc_item.dart';
import 'package:demo_app/CallApi/events/item_events.dart';
import 'package:demo_app/CallApi/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      /// Takes a [Create] function that is responsible for creating the repository
      create: (context) {
        /// Declare what blocks are used (in this case, [BlocItem] is used)
        return BlocItem(requestApi: RepositoryProvider.of(context))
          ..add(LoadItemEvent());
      },
      /// and a [child] which will have ACCESS to the repository via
      child: HomeView(),
    );
    // return Container();
  }
}
