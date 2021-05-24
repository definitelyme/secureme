part of 'onboarding_cubit.dart';

@freezed
@immutable
class OnboardingState with _$OnboardingState {
  static const int kInitialPage = 0;

  const factory OnboardingState({
    @Default(false) bool isLoading,
    required PageController controller,
    @Default(OnboardingState.kInitialPage) int currentIndex,
  }) = _OnboardingState;

  factory OnboardingState.initial() => OnboardingState(
        controller: PageController(
          initialPage: OnboardingState.kInitialPage,
          keepPage: true,
        ),
      );
}
