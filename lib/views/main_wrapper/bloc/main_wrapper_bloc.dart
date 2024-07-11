import 'package:flutter_bloc/flutter_bloc.dart'
;

part 'main_wrapper_event.dart';part 'main_wrapper_state.dart';

class MainWrapperBloc extends Bloc<MainWrapperEvent, MainWrapperState> {
  MainWrapperBloc() : super(MainWrapperState.initial()) {
    on<ChangeNavigation>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
