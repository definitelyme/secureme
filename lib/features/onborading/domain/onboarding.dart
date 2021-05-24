library onboarding.dart;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'onboarding.freezed.dart';

@freezed
@immutable
class OnboardingItem<Pixel> with _$OnboardingItem<Pixel> {
  const OnboardingItem._();

  const factory OnboardingItem({
    required String title,
    required String description,
    required Pixel image,
  }) = _OnboardingItem;

  static KtList<OnboardingItem<String>> get list => KtList.from([
        OnboardingItem(
          title: 'Report a crime',
          description: 'Reporting description',
          image: 'image',
        ),
        //
        OnboardingItem(
          title: 'Find an officer',
          description: 'I found the chief',
          image: 'image',
        ),
        //
        OnboardingItem(
          title: 'Safety Always!',
          description: 'Brief Decription here',
          image: 'image',
        ),
      ]);
}
