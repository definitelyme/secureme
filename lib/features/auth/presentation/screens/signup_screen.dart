import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class SignupScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode displayNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode confirmPasswordFocus = FocusNode();
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => navigator.replace(const LoginRoute()));

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(backgroundColor: Colors.transparent),
      body: Center(
        child: SingleChildScrollView(
          controller: ScrollController(),
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: SecuremeLogo.horizontal(
                  logoHeight: App.shortest * 0.16,
                  logoWidth: App.shortest * 0.135,
                  maxWidth: App.shortest * 0.51,
                  fit: BoxFit.cover,
                ),
              ),
              //
              Flexible(
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Helpers.foldTheme(
                        light: () => Colors.grey.shade300,
                        dark: () => Colors.grey.shade800,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: VerticalSpace(height: App.shortest * 0.05),
                        ),
                        //
                        Flexible(
                          child: AutoSizeText(
                            'Register',
                            style:
                                Theme.of(context).textTheme.headline5!.copyWith(
                                      fontWeight: FontWeight.w700,
                                    ),
                          ),
                        ),
                        //
                        Flexible(
                          child: VerticalSpace(height: App.shortest * 0.07),
                        ),
                        //
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: App.shortest * 0.04,
                          ),
                          child: Form(
                            // autovalidateMode: s.validate
                            //     ? AutovalidateMode.always
                            //     : AutovalidateMode.disabled,
                            child: AutofillGroup(
                              onDisposeAction: AutofillContextAction.commit,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: AdaptiveTextFormInput(
                                      hintText: 'Jane Doe',
                                      hintStyle: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                          color: Colors.black54,
                                        ),
                                        dark: () => const TextStyle(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      style: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      keyboardType: TextInputType.name,
                                      autoFillHints: [
                                        AutofillHints.name,
                                        AutofillHints.givenName,
                                        AutofillHints.nickname,
                                        AutofillHints.familyName,
                                        AutofillHints.middleName,
                                        AutofillHints.newUsername,
                                      ],
                                      focus: displayNameFocus,
                                      next: emailFocus,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: VerticalSpace(
                                      height: App.shortest * 0.03,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: AdaptiveTextFormInput(
                                      hintText: 'johndoe@email.com',
                                      hintStyle: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                          color: Colors.black54,
                                        ),
                                        dark: () => const TextStyle(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      style: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      autoFillHints: [AutofillHints.email],
                                      focus: emailFocus,
                                      next: phoneFocus,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: VerticalSpace(
                                      height: App.shortest * 0.03,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: AdaptiveTextFormInput(
                                      hintText: '08123456789',
                                      hintStyle: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                          color: Colors.black54,
                                        ),
                                        dark: () => const TextStyle(
                                          color: Colors.white60,
                                        ),
                                      ),
                                      style: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                          color: Colors.black,
                                        ),
                                      ),
                                      maxLength: 11,
                                      maxLengthEnforced: true,
                                      keyboardType: TextInputType.phone,
                                      autoFillHints: [
                                        AutofillHints.telephoneNumber,
                                        AutofillHints.telephoneNumberLocal,
                                        AutofillHints.telephoneNumberNational,
                                      ],
                                      focus: phoneFocus,
                                      next: passwordFocus,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: VerticalSpace(
                                      height: App.shortest * 0.03,
                                    ),
                                  ),
                                  //
                                  Flexible(
                                    child: AdaptiveTextFormInput(
                                      enableSuggestions: false,
                                      autoCorrect: false,
                                      obscureText: true,
                                      style: Helpers.foldTheme(
                                        light: () => const TextStyle(
                                            color: Colors.black),
                                      ),
                                      focus: passwordFocus,
                                      autoFillHints: [
                                        AutofillHints.newPassword,
                                        AutofillHints.password,
                                      ],
                                      decoration: InputDecoration(
                                        hintText: 'sec****t',
                                        hintStyle: Helpers.foldTheme(
                                          light: () => const TextStyle(
                                              color: Colors.black54),
                                          dark: () => const TextStyle(
                                              color: Colors.white60),
                                        ),
                                        suffixIcon: Material(
                                          color: Colors.transparent,
                                          shape: const CircleBorder(),
                                          clipBehavior: Clip.hardEdge,
                                          child: IconButton(
                                            icon: Icon(
                                              AppIcons.eyelash_open,
                                              color: Helpers.computeLuminance(
                                                Theme.of(context)
                                                    .scaffoldBackgroundColor,
                                              ),
                                            ),
                                            onPressed: () {
                                              log.wtf('hello clicked');
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //
                        Flexible(
                          child: VerticalSpace(
                            height: App.longest * 0.04,
                          ),
                        ),
                        //
                        Flexible(
                          child: AppButton(
                            onPressed: () => navigator.pushAndPopUntil(
                              OtpVerificationRoute(),
                              predicate: (_) => false,
                            ),
                            textColor: Colors.white,
                            elevation: 0.0,
                            borderRadius: BorderRadius.zero,
                            backgroundColor: AppColors.accentColor,
                            splashColor: Colors.white30,
                            child: SizedBox(
                              height: App.longest * 0.045,
                              width: double.infinity,
                              child: const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              Flexible(
                child: VerticalSpace(
                  height: App.longest * 0.07,
                ),
              ),
              //
              Flexible(
                child: GestureDetector(
                  onTap: () => navigator.replace(
                    const LoginRoute(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AppAssets.key,
                        //
                        HorizontalSpace(width: App.shortest * 0.02),
                        //
                        AutoSizeText(
                          'Log In',
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
                                    fontSize: 16.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              //
              Flexible(
                child: VerticalSpace(
                  height: App.longest * 0.03,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
