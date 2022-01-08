// ignore_for_file: public_member_api_docs

part of 'animation_cubit.dart';

enum AnimationStatus { incomplete, complete }

class AnimationState extends Equatable {
  const AnimationState._({
    this.animationStatus = AnimationStatus.incomplete,
    this.offset = Offset.zero,
    this.numberOfCorrectTiles = 0,
  });

  const AnimationState.initial() : this._();

  /// Status indicating the current state of the animation.
  final AnimationStatus animationStatus;

  final Offset offset;

  /// Number of tiles currently in their correct position.
  final int numberOfCorrectTiles;

  AnimationState copyWith({
    AnimationStatus? animationStatus,
    Offset? offset,
    int? numberofCorrectTiles,
  }) {
    return AnimationState._(
      animationStatus: animationStatus ?? this.animationStatus,
    );
  }

  @override
  List<Object?> get props => [
        animationStatus,
        numberOfCorrectTiles,
      ];
}
