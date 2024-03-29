import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/loading.u.dart';
import '../../../shared/widgets/unknown_failure.dart';
import '../bloc/overview_order_bloc.u.dart';
import '../widgets/overview_order_content.u.dart';

class OverViewOrderView extends StatelessWidget {
  const OverViewOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    context.watch<OverviewOrderBloc>().state.maybeWhen(
          initial: () {
            return context.read<OverviewOrderBloc>().add(
                  const OverviewOrderEvent.started(),
                );
          },
          orElse: () => false,
        );

    return BlocBuilder<OverviewOrderBloc, OverviewOrderState>(
      builder: (context, state) => state.when(
        initial: Container.new,
        failure: UnknownFailure.new,
        loading: Loading.new,
        loadDataSuccess:
            (overviewOrderData, pendingService, pendingRequest, total, len) =>
                OverviewOrderContent(
          overviewOrderData: overviewOrderData,
          pendingService: pendingService,
          total: total,
          pendingRequest: pendingRequest,
          len: len,
        ),
      ),
    );
  }
}
