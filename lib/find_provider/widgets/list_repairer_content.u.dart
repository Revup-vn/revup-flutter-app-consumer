import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';

import '../../l10n/l10n.dart';
import '../../router/router.dart';
import '../models/provider_data.u.dart';

class ListRepairerContent extends StatelessWidget {
  const ListRepairerContent({
    super.key,
    this.listProvider,
  });
  final IList<ProviderData>? listProvider;
  @override
  Widget build(BuildContext context) {
    final providerVector = IVector.from(listProvider!.toIterable());

    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Theme.of(context).colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListBody(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 9,
                    child: Column(
                      children: [
                        ListTile(
                          onTap: () {
                            context.router.push(
                              RepairerProfileRoute(
                                providerID: providerVector
                                        .get(index)
                                        .getOrElse(ProviderData.new)
                                        .id ??
                                    '',
                              ),
                            );
                          },
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(48),
                            child: CircleAvatar(
                              child: CachedNetworkImage(
                                height: 64,
                                width: 64,
                                fit: BoxFit.fitWidth,
                                imageUrl: providerVector
                                        .get(index)
                                        .getOrElse(ProviderData.new)
                                        .avatar ??
                                    '',
                              ),
                            ),
                          ),
                          title: AutoSizeText(
                            providerVector
                                    .get(index)
                                    .getOrElse(ProviderData.new)
                                    .fullName ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          subtitle: AutoSizeText(
                            providerVector
                                    .get(index)
                                    .getOrElse(ProviderData.new)
                                    .address ??
                                '',
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 1,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              AutoSizeText(
                                providerVector
                                    .get(index)
                                    .getOrElse(ProviderData.new)
                                    .numberStarRating
                                    .toString(),
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              Icon(
                                Icons.star,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary,
                                size: 18,
                              ),
                              AutoSizeText(
                                '(${providerVector.get(index).getOrElse(
                                      ProviderData.new,
                                    ).totalRating.toString()})',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.location_pin,
                                size: 18,
                              ),
                              AutoSizeText(
                                '${providerVector.get(index).getOrElse(
                                      ProviderData.new,
                                    ).distance.toString()} m',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Icon(
                                Icons.timer,
                                size: 18,
                              ),
                              AutoSizeText(
                                '''
${providerVector.get(index).getOrElse(
                                      ProviderData.new,
                                    ).timeArrivalInMinute.toString()} ${context.l10n.minutesLabel}''',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: IconButton(
                      onPressed: null,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: listProvider!.length(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
