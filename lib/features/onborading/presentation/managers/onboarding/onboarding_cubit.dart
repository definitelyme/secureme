import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:secureme/config/env.dart';
import 'package:secureme/features/onborading/domain/onboarding.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

@injectable
class OnboardingCubit extends Cubit<OnboardingState> {
  final KtList<OnboardingItem<String>> items = OnboardingItem.list;

  OnboardingCubit() : super(OnboardingState.initial());

  void delaySplash() async {
    emit(state.copyWith(isLoading: true));
    await Future.delayed(env.splashDuration);
    emit(state.copyWith(isLoading: false));
  }

  void attachControllerListener() {
    state.controller.addListener(() {
      if (state.controller.page != null &&
          state.controller.page?.round() != state.currentIndex) {
        emit(state.copyWith(currentIndex: state.controller.page!.round()));
      }
    });
  }

  void prev() async {
    if (state.currentIndex != 0)
      await state.controller.previousPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    emit(state.copyWith(controller: state.controller));
  }

  void next() async {
    if (state.currentIndex != items.size - 1)
      await state.controller.nextPage(
        duration: Duration(milliseconds: 400),
        curve: Curves.easeIn,
      );
    emit(state.copyWith(controller: state.controller));
  }

  bool isLast(Either<OnboardingItem<String>, int> value) {
    return value.fold(
      (onboardingItem) => items.indexOf(onboardingItem) == items.size - 1,
      (index) => index == items.size - 1,
    );
  }
}
