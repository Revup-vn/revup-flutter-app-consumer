import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:revup/service/choose-service/bloc/choose_service_bloc.dart';
import 'package:revup/service/models/product_data.dart';
import 'package:revup/service/models/service_data.dart';

void main() {
  late ChooseServiceBloc chooseServiceBloc;

  final services = ilist(<ServiceData>[
    const ServiceData(
      id: '1',
      name: 'Cat Service',
      imageUrl:
          'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
      products: [
        ProductData(
          id: 'id',
          name: 'Cat Product',
          productImageUrl:
              'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
          price: 100000,
        ),
      ],
    ),
  ]);

  setUp(() {
    chooseServiceBloc = ChooseServiceBloc();
  });
  blocTest<ChooseServiceBloc, ChooseServiceState>(
    'emits [loading, success] when Started is added.',
    build: () => chooseServiceBloc,
    act: (bloc) => bloc.add(const ChooseServiceEvent.started()),
    expect: () => [
      const ChooseServiceState.loading(),
      ChooseServiceState.success(services)
    ],
  );
  blocTest<ChooseServiceBloc, ChooseServiceState>(
    'emits [loading] when ServiceListSubmitted is added.',
    build: () => chooseServiceBloc,
    act: (bloc) => bloc.add(const ChooseServiceEvent.serviceListSubmitted()),
    expect: () => [
      const ChooseServiceState.loading(),
    ],
  );

  blocTest<ChooseServiceBloc, ChooseServiceState>(
    'should change isSelected to true when ServiceSelected is added.',
    setUp: () {},
    build: () => chooseServiceBloc,
    act: (bloc) {
      bloc.add(
        const ChooseServiceEvent.serviceSelectChanged(
          serviceData: ServiceData(
            id: '1',
            name: 'Cat Service',
            imageUrl:
                'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
            products: [
              ProductData(
                id: 'id',
                name: 'Cat Product',
                productImageUrl:
                    'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
                price: 100000,
              ),
            ],
          ),
          isSelected: false,
        ),
      );
    },
  );

  blocTest<ChooseServiceBloc, ChooseServiceState>(
    'emits [loading, success] when NewServiceRequested is added.',
    build: () => chooseServiceBloc,
    act: (bloc) => bloc.add(
      const ChooseServiceEvent.newServiceRequested(
        ServiceData(
          id: '99',
          name: '',
          isSelected: true,
          desc: '',
          imageUrl: '',
        ),
      ),
    ),
    expect: () => [
      const ChooseServiceState.loading(),
      ChooseServiceState.success(
        services.appendElement(
          const ServiceData(
            id: '99',
            name: '',
            isSelected: true,
            desc: '',
            imageUrl: '',
          ),
        ),
      ),
    ],
  );

  blocTest<ChooseServiceBloc, ChooseServiceState>(
    'emits [orderModify] when DetailRequestAccepted is added.',
    build: () => chooseServiceBloc,
    act: (bloc) => bloc
        .add(const ChooseServiceEvent.detailRequestAccepted(recordId: 'id')),
    expect: () => [
      ChooseServiceState.orderModify(
        services.appendElement(
          const ServiceData(
            id: '4',
            name: 'Cat Service',
            isSelected: true,
            imageUrl:
                'https://images.unsplash.com/photo-1574144611937-0df059b5ef3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80',
            products: [
              ProductData(
                id: '2',
                name: 'Cat Product',
                productImageUrl:
                    'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
                price: 100000,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
