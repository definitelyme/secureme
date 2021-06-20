import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class LoginScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
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
    return AdaptiveScaffold(
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
                            'Login',
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
                        Flexible(
                          child: Padding(
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
                                        hintText: 'johndoe@email.com',
                                        hintStyle: Helpers.foldTheme(
                                          light: () => const TextStyle(
                                              color: Colors.black54),
                                          dark: () => const TextStyle(
                                              color: Colors.white60),
                                        ),
                                        style: Helpers.foldTheme(
                                          light: () => const TextStyle(
                                              color: Colors.black),
                                        ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        autoFillHints: [AutofillHints.email],
                                        focus: emailFocus,
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
                                          hintText: 'secret',
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
                        ),
                        //
                        Flexible(
                          child: VerticalSpace(
                            height: App.shortest * 0.15,
                          ),
                        ),
                        //
                        Flexible(
                          child: AppButton(
                            // onPressed: () => navigator.pushAndPopUntil(
                            //   HomeRoute(),
                            //   predicate: (_) => false,
                            // ),
                            onPressed: () => navigator.push(const HomeRoute()),
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
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: GestureDetector(
                        onTap: () => navigator.push(
                          ForgotPasswordRoute(),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppAssets.key,
                            //
                            HorizontalSpace(width: App.shortest * 0.02),
                            //
                            AutoSizeText(
                              'Forgot Password?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //
                    Divider(
                      height: App.shortest * 0.07,
                      thickness: 1.7,
                      indent: App.shortest * 0.02,
                      endIndent: App.shortest * 0.02,
                    ),
                    //
                    Flexible(
                      child: GestureDetector(
                        onTap: () => navigator.replace(
                          const SignupRoute(),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppAssets.signUp,
                            //
                            HorizontalSpace(width: App.shortest * 0.02),
                            //
                            AutoSizeText(
                              'Sign up',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    fontSize: 15.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
