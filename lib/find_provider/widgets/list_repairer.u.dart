import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../bloc/find_list_repairer_bloc.dart';
import '../models/provider_data.u.dart';
import 'list_repairer_content.u.dart';

class ListRepairer extends StatelessWidget {
  const ListRepairer({
    super.key,
    required this.sortType,
    required this.listProvider,
  });

  factory ListRepairer.def({
    Key? key,
    required IList<ProviderData> listProvider,
  }) =>
      ListRepairer(
        key: key,
        sortType: '',
        listProvider: listProvider,
      );

  final String sortType;
  final IList<ProviderData> listProvider;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                AutoSizeText(
                  context.l10n.repairerAroundLabel,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.bold),
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.onSurface,
                      width: 0.8,
                    ),
                  ),
                  child: BlocSelector<FindListRepairerBloc,
                      FindListRepairerState, String>(
                    selector: (state) => state.maybeMap(
                      dropdownListChangedSuccess: (value) => value.sortType,
                      orElse: () => context.l10n.sortAsLabel,
                    ),
                    builder: (context, state) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton(
                          isDense: true,
                          dropdownColor:
                              Theme.of(context).colorScheme.onSurfaceVariant,
                          hint: Text(
                            context.l10n.sortAsLabel,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          value: (state == context.l10n.sortAsLabel)
                              ? null
                              : state,
                          icon: const Icon(Icons.arrow_drop_down),
                          elevation: 16,
                          style: Theme.of(context).chipTheme.labelStyle,
                          items: <String>[
                            (context.l10n.distanceLabel),
                            (context.l10n.ratingLabel),
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? sortType) {
                            context.read<FindListRepairerBloc>().add(
                                  FindListRepairerEvent.dropdownListChanged(
                                    sortType:
                                        sortType ?? context.l10n.sortAsLabel,
                                  ),
                                );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListRepairerContent(listProvider: listProvider),
            ),
          ],
        ),
      ),
    );
  }
}
