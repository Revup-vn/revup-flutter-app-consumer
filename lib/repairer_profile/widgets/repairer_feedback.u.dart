import 'package:flutter/material.dart';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../models/rating_data.u.dart';

class RepairerProfileFeedback extends StatelessWidget {
  const RepairerProfileFeedback(this.ratingData, {super.key});
  final IVector<RatingData> ratingData;

  @override
  Widget build(BuildContext context) {
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
                    flex: 2,
                    child: Column(
                      children: [
                        ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(48),
                            child: CircleAvatar(
                              child: CachedNetworkImage(
                                height: 64,
                                width: 64,
                                fit: BoxFit.fitWidth,
                                imageUrl: ratingData
                                        .get(index)
                                        .getOrElse(RatingData.new)
                                        .imageUrl ??
                                    '',
                              ),
                            ),
                          ),
                          title: AutoSizeText(
                            ratingData
                                    .get(index)
                                    .getOrElse(RatingData.new)
                                    .consumerName ??
                                '',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                            maxLines: 1,
                          ),
                          subtitle: RatingBar.builder(
                            ignoreGestures: true,
                            initialRating: double.parse(
                              ratingData
                                  .get(index)
                                  .getOrElse(RatingData.new)
                                  .rating
                                  .toString(),
                            ),
                            itemSize: 19,
                            allowHalfRating: true,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                            ),
                            onRatingUpdate: (double value) {
                              // TODO(wamynobe): update when rating change
                            },
                          ),
                        ),
                        AutoSizeText(
                          ratingData
                                  .get(index)
                                  .getOrElse(RatingData.new)
                                  .description ??
                              '',
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                      child: AutoSizeText(
                        ratingData
                                    .get(index)
                                    .getOrElse(RatingData.new)
                                    .createdTime
                                    ?.day !=
                                DateTime.now().day
                            ? '''${DateTime.now().difference(ratingData.get(index).getOrElse(RatingData.new).createdTime!).inDays} ng??y tr?????c'''
                            : 'Today',
                        style: Theme.of(context).textTheme.bodyMedium,
                        maxLines: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: ratingData.length(),
      separatorBuilder: (BuildContext context, int index) => const SizedBox(
        height: 5,
      ),
    );
  }
}
