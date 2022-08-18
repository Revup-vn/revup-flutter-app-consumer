import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/invoice_bloc.u.dart';
import '../widgets/loading.u.dart';
import '../widgets/service_main_content.u.dart';

class ServiceInvoiceView extends StatelessWidget {
  const ServiceInvoiceView({super.key});
  @override
  Widget build(BuildContext context) {
    context.watch<InvoiceBloc>().state.maybeWhen(
          initial: (hasValue) {
            return context
                .read<InvoiceBloc>()
                .add(const InvoiceEvent.started());
          },
          orElse: () => false,
        );

    return BlocBuilder<InvoiceBloc, InvoiceState>(
      builder: (context, state) => state.when(
        initial: (_) => Container(),
        loading: InvoiceLoading.new,
        loadingDataSuccess: (data, ready, total, serviceData) =>
            ServiceInvoiceContent(total, data, serviceData, ready: ready),
      ),
    );
  }
}