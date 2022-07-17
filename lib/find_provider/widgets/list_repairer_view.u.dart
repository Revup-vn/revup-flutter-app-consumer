import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../l10n/l10n.dart';
import '../../router/app_router.dart';
import '../bloc/find_list_repairer_bloc.dart';
import 'list_repairer_main_content.u.dart';

class ListRepairerView extends StatelessWidget {
  const ListRepairerView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<FindListRepairerBloc, FindListRepairerState>(
      listener: (context, state) => state.maybeWhen(
        pickARepairer: () => context.router.push(const RepairerProfileRoute()),
        orElse: () => unit,
      ),
      child: SafeArea(
        child: Padding(
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
                  IconButton(
                    alignment: const Alignment(-4, 0),
                    icon: Icon(
                      Icons.arrow_back,
                      size: Theme.of(context).iconTheme.size,
                    ),
                    onPressed: () {},
                  ),
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
                        valueChanged: (value) => value.value,
                        orElse: () => context.l10n.sortAsLabel,
                      ),
                      builder: (context, state) {
                        return DropdownButton(
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
                          onChanged: (Object? value) {
                            context.read<FindListRepairerBloc>().add(
                                  FindListRepairerEvent.onChanged(
                                    value: value.toString(),
                                  ),
                                );
                          },
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
                child: ListRepairerContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
