import 'package:flutter_bloc/flutter_bloc.dart';

enum ActiveHalf { none, left, right }

class LogoState {
  final ActiveHalf activeHalf;

  const LogoState({this.activeHalf = ActiveHalf.none});

  bool get isLeftActive => activeHalf == ActiveHalf.left;
  bool get isRightActive => activeHalf == ActiveHalf.right;
}

class LogoCubit extends Cubit<LogoState> {
  LogoCubit() : super(const LogoState());

  void toggleHalfLogo() {
    switch (state.activeHalf) {
      case ActiveHalf.none:
        emit(const LogoState(activeHalf: ActiveHalf.left));
      case ActiveHalf.left:
        emit(const LogoState(activeHalf: ActiveHalf.right));
      case ActiveHalf.right:
        emit(const LogoState(activeHalf: ActiveHalf.left));
    }
  }
}
