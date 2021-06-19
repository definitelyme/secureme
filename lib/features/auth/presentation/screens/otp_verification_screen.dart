import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:secureme/manager/locator/locator.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';
import 'package:secureme/features/auth/presentation/managers/index.dart';

/// A stateless widget to render OtpVerificationScreen.
class OtpVerificationScreen extends StatelessWidget with AutoRouteWrapper {
  final TapGestureRecognizer tapRecognizer = TapGestureRecognizer()
    ..onTap = (() => print('resend verification!'));

  OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OtpCubit>(),
      child: this,
    );
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
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.circular(100.0),
                ),
                padding: EdgeInsets.all(17.0),
                child: AppAssets.deviceScreen,
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
                          'We sent a code',
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
                          'Please enter the 4 digits code we just emailed you.',
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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PinInputWidget<OtpCubit, OtpState>(
                              length: 6,
                              validate: false,
                              cursorColor: Helpers.foldTheme(
                                light: () => Colors.black87,
                                dark: () => Colors.white70,
                              ),
                              pinType: PinInputType.circle,
                              keyboardType: TextInputType.number,
                              onChanged: (_) {},
                              onCompleted: (_) {},
                              validator: (state) => null,
                            ),
                          ],
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
                          backgroundColor: AppColors.accentColor,
                          splashColor: Colors.white30,
                          child: SizedBox(
                            height: App.longest * 0.045,
                            width: double.infinity,
                            child: Icon(
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
            ],
          ),
        ),
      ),
    );
  }
}
