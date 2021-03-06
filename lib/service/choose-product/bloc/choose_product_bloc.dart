import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/product_data.dart';

part 'choose_product_bloc.freezed.dart';
part 'choose_product_event.dart';
part 'choose_product_state.dart';

class ChooseProductBloc extends Bloc<ChooseProductEvent, ChooseProductState> {
  ChooseProductBloc() : super(const _Initial()) {
    on<ChooseProductEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    ChooseProductEvent event,
    Emitter<ChooseProductState> emit,
  ) {
    event.when(
      started: () async {
        emit(const ChooseProductState.loading());
        final products = [
          const ProductData(
            id: '1',
            serviceId: '1',
            name: 'Chips',
            price: 1000,
            productImageUrl:
                'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
          ),
          const ProductData(
            id: '2',
            serviceId: '1',
            name: 'Chips',
            price: 1000,
            productImageUrl:
                'https://images.unsplash.com/photo-1657826181686-a1d28a11e3ae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1176&q=80',
          ),
        ];
        emit(ChooseProductState.success(products));
      },
      submitted: (product) async {
        emit(const ChooseProductState.loading());
      },
    );
  }
}
