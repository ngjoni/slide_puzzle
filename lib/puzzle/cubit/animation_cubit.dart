// ignore_for_file: public_member_api_docs

import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/gestures.dart';
import 'package:very_good_slide_puzzle/models/models.dart';

part 'animation_state.dart';

class AnimationCubit extends Cubit<AnimationState> {
  AnimationCubit() : super(const AnimationState.initial());

  void increment(DragUpdateDetails dragDetails) {
    var _offset = state.offset;
    _offset += dragDetails.delta;

    emit(state.copyWith(offset: _offset));
  }

  void offsetToZero() {
    emit(state.copyWith(offset: Offset.zero));
  }
}
