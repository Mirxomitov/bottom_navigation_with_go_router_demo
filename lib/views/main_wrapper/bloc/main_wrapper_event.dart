part of 'main_wrapper_bloc.dart';

class MainWrapperEvent {}

class ChangeNavigation extends MainWrapperEvent {
  final int index;

  ChangeNavigation({required this.index});
}
