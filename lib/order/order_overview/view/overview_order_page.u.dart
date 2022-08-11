import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../../service/choose_service/bloc/choose_service_bloc.u.dart';
import '../../../shared/utils.dart';
import '../bloc/overview_bloc.u.dart';
import '../bloc/overview_order_bloc.u.dart';
import 'overview_order_view.u.dart';

class OverViewOrderPage extends StatelessWidget {
  const OverViewOrderPage({
    super.key,
    // required this.providerID,
  });
  final String providerID = 'geCHNSHZ2xg2GfMSfZpxAweWWln2';
  @override
  Widget build(BuildContext context) {
    final sr = context.read<StoreRepository>();
    final mayBeUser = getUser(context.read<AuthenticateBloc>().state);

    return MultiBlocProvider(
      providers: [
        BlocProvider<OverviewOrderBloc>(
          create: (BuildContext context) => OverviewOrderBloc(
            providerID,
            context.read(),
            context.read(),
            sr,
            mayBeUser,
          ),
        ),
        BlocProvider<OverviewBloc>(
          create: (BuildContext context) => OverviewBloc(),
        ),
        BlocProvider<ChooseServiceBloc>(
          create: (BuildContext context) => ChooseServiceBloc(
            context.read(),
            context.read(),
            sr,
            providerID,
            mayBeUser,
            // context.read(),
          ),
        ),
      ],
      child: const Scaffold(
        body: OverViewOrderView(),
      ),
    );
  }
}