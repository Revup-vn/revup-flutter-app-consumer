import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revup_core/core.dart';

import '../../h2_find_provider/models/provider_data.u.dart';
import '../../shared/widgets/loading.u.dart';
import '../bloc/request_provider_bloc.dart';
import '../widgets/request_details_live.dart';
import '../widgets/request_details_static.dart';
import '../widgets/request_provider_failure.dart';
import '../widgets/request_provider_live.dart';
import '../widgets/request_provider_static.dart';

class RequestProviderView extends StatelessWidget {
  const RequestProviderView({
    super.key,
    required this.providerData,
    required this.recordType,
    required this.userStore,
  });
  final ProviderData providerData;
  final String recordType;
  final IStore<AppUser> userStore;

  @override
  Widget build(BuildContext context) {
    final blocPage = context.watch<RequestProviderBloc>();
    blocPage.state.whenOrNull(
      initial: () => blocPage.add(const RequestProviderEvent.started()),
    );

    return BlocBuilder<RequestProviderBloc, RequestProviderState>(
      builder: (context, state) {
        return state.when(
          initial: Loading.new,
          success: (directions, fromMaker, toMarker, movingFees, provider) {
            return Stack(
              children: <Widget>[
                if (recordType == 'pending')
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: RequestProviderStatic(
                      providerData: providerData,
                      directions: directions,
                      fromMaker: fromMaker,
                      toMarker: toMarker,
                      movingFees: movingFees,
                    ),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: RequestProviderLive(
                      providerData: providerData,
                      directions: directions,
                      fromMaker: fromMaker,
                      toMarker: toMarker,
                      movingFees: movingFees,
                      userStore: userStore,
                    ),
                  ),
                if (recordType == 'pending')
                  RequestDetailsStatic(
                    providerData: providerData,
                    movingFees: movingFees,
                    directions: directions,
                  )
                else
                  RequestDetailsLive(
                    providerData: providerData,
                    movingFees: movingFees,
                  ),
              ],
            );
          },
          failure: RequestProviderFailure.new,
          loading: Loading.new,
        );
      },
    );
  }
}
