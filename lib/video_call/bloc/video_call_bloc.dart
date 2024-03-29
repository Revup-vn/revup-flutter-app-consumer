import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectycube_sdk/connectycube_sdk.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:revup_core/core.dart';

import '../video_call_manager/call_mange.u.dart';

part 'video_call_bloc.freezed.dart';
part 'video_call_event.dart';
part 'video_call_state.dart';

class VideoCallBloc extends Bloc<VideoCallEvent, VideoCallState> {
  VideoCallBloc(
    this.pid,
    this.context,
    this.userRepos,
  ) : super(const _Initial()) {
    on<VideoCallEvent>(_onEvent);
  }
  final IStore<AppUser> userRepos;
  final String pid;
  final BuildContext context;
  FutureOr<void> _onEvent(
    VideoCallEvent event,
    Emitter<VideoCallState> emit,
  ) async {
    event.when(
      started: () => emit(const VideoCallState.initial()),
      callStarted: () async {
        final providerUsrName = (await userRepos.get(pid))
            .getOrElse(() => throw NullThrownError())
            .mapOrNull(
              provider: (value) => value.vac.username,
            );
        final callUser = await getUserByLogin(providerUsrName ?? '');
        // ignore: use_build_context_synchronously
        CallManager.instance.startNewCall(
          context,
          CallType.VIDEO_CALL,
          <int>{callUser?.id ?? 1},
        );
      },
    );
  }
}
