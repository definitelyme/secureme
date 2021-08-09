import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/features/core/domain/entities/entities.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

/// A stateless widget to render ForgotPasswordScreen.
class ForgotPasswordScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode emailFocus = FocusNode();
  final EmailAddress? emailAddress;

  ForgotPasswordScreen({Key? key, this.emailAddress}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: const AdaptiveToolbar(),
      body: Center(
        child: SingleChildScrollView(
          controller: ScrollController(),
          clipBehavior: Clip.antiAlias,
          padding: EdgeInsets.symmetric(horizontal: App.appPadding),
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Palette.accentColor,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: AppAssets.face,
                ),
              ),
              //
              Flexible(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: VerticalSpace(height: App.shortest * 0.05),
                      ),
                      //
                      Flexible(
                        child: AutoSizeText(
                          'Forgot Password?',
                          style:
                              Theme.of(context).textTheme.headline6!.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                      ),
                      //
                      Flexible(
                        child: VerticalSpace(height: App.shortest * 0.04),
                      ),
                      //
                      Flexible(
                        child: AutoSizeText(
                          'Enter the email address associated with your account '
                          'and we\'ll send you an email.',
                          style: Theme.of(context).textTheme.subtitle1,
                          textAlign: TextAlign.center,
                          softWrap: true,
                          maxLines: 2,
                          minFontSize: 8,
                        ),
                      ),
                      //
                      Flexible(
                        child: VerticalSpace(height: App.shortest * 0.1),
                      ),
                      //
                      Form(
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
                                    light: () =>
                                        const TextStyle(color: Colors.black54),
                                    dark: () =>
                                        const TextStyle(color: Colors.white60),
                                  ),
                                  style: Helpers.foldTheme(
                                    light: () =>
                                        const TextStyle(color: Colors.black),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                  autoFillHints: [AutofillHints.email],
                                  focus: emailFocus,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //
                      Flexible(
                        child: VerticalSpace(
                          height: App.shortest * 0.05,
                        ),
                      ),
                      //
                      Flexible(
                        child: AppButton(
                          onPressed: () {},
                          textColor: Colors.white,
                          elevation: 0.0,
                          backgroundColor: Palette.accentColor,
                          splashColor: Colors.white30,
                          child: SizedBox(
                            height: App.longest * 0.045,
                            width: double.infinity,
                            child: Icon(
                              Icons.check,
                              color: Theme.of(context).platform.fold(
                                    material: () => Colors.white,
                                    cupertino: () => Palette.accentColor,
                                  ),
                              size: 30.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
