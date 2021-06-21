import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

/// A stateless widget to render EditProfileScreen.
class EditProfileScreen extends StatelessWidget with AutoRouteWrapper {
  final FocusNode displayNameFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode phoneFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      adaptiveToolbar: AdaptiveToolbar(
        title: 'Update Profile',
        actions: [
          AppButton(
            text: 'Save',
            fontSize: 19.sp,
            backgroundColor: Colors.transparent,
            borderRadius: BorderRadius.circular(100.0),
            height: kToolbarHeight * 0.5,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            padding: EdgeInsets.zero,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        controller: ScrollController(),
        clipBehavior: Clip.antiAlias,
        padding: EdgeInsets.symmetric(horizontal: Helpers.appPadding),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
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
                          label: 'Display Name',
                          filled: false,
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: Helpers.inputHorizontalPadding,
                          ),
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
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
                          // next: emailFocus,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //
            Flexible(
              child: Form(
                child: AutofillGroup(
                  onDisposeAction: AutofillContextAction.commit,
                  child: Column(
                    children: [
                      const Text('Change Password section'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
