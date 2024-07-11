part of 'main_wrapper_bloc.dart';

class MainWrapperState {
  final int index;

  MainWrapperState copyWith({int? index}) {
    return MainWrapperState(index: index ?? this.index);
  }

  factory MainWrapperState.initial() {
    return MainWrapperState(index: 0);
  }

  MainWrapperState({required this.index});
}
