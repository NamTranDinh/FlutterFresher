import 'package:demo_app/CallApi/blocs/bloc_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/events/item_events.dart';
import '../views/home_view.dart';


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
