import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../account/bloc/account_bloc.dart';
import '../bloc/home_bloc.dart';
import 'home_body_view.u.dart';

class HomeBodyPage extends StatelessWidget {
  const HomeBodyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(
          create: (_) => HomeBloc()..add(const HomeEvent.started()),
        ),
        BlocProvider<AccountBloc>(
          create: (_) => AccountBloc()..add(const AccountEvent.started()),
        ),
      ],
      child: const HomeBodyView(),
    );
  }
}
