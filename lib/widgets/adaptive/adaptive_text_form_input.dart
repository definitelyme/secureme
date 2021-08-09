import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class AdaptiveTextFormInput extends StatefulWidget {
  final void Function(String)? onChanged;
  final TextInputAction? action;
  final bool autoCorrect;
  final bool readOnly;
  final Iterable<String>? autoFillHints;
  final bool autoFocus;
  final InputBorder? border;
  final TextCapitalization capitalization;
  final TextEditingController? controller;
  final double cupertinoInputMargin;
  final Color? cursorColor;
  final InputDecoration? decoration;
  final bool enableSuggestions;
  final String? errorText;
  //
  final bool? filled;
  final bool disabled;
  final bool expands;

  final FocusNode? focus;
  final InputBorder? focusBorder;
  final TextStyle? hintStyle;
  final String? hintText;
  final String? initial;
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final String? label;
  final TextStyle? labelStyle;
  final int? maxLength;
  final bool maxLengthEnforced;
  final int? maxLines;
  final int? minLines;
  final FocusNode? next;
  final bool obscureText;
  final EdgeInsetsGeometry? padding;
  final Widget? prefix;
  //
  final OverlayVisibilityMode prefixMode;

  final bool showCursor;
  final TextStyle? style;
  final Widget? suffix;
  final OverlayVisibilityMode suffixMode;
  final ToolbarOptions? toolbarOptions;
  final bool validate;

  const AdaptiveTextFormInput({
    Key? key,
    this.maxLines = 1,
    this.minLines,
    this.enableSuggestions = true,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.obscureText = false,
    this.showCursor = true,
    this.initial,
    this.cursorColor,
    this.keyboardType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.action,
    this.decoration,
    this.readOnly = false,
    this.autoFillHints = const [],
    this.inputFormatters = const [],
    this.validate = false,
    this.disabled = false,
    this.expands = false,
    this.controller,
    this.maxLength,
    this.maxLengthEnforced = false,
    this.style,
    this.errorText,
    this.onChanged,
    this.focus,
    this.next,
    this.toolbarOptions,
    this.prefix,
    this.suffix,
    this.prefixMode = OverlayVisibilityMode.always,
    this.suffixMode = OverlayVisibilityMode.always,
    this.filled,
    this.hintStyle,
    this.hintText,
    this.labelStyle,
    this.label,
    this.border,
    this.focusBorder,
    this.padding,
    this.cupertinoInputMargin = 8.0,
  }) : super(key: key);

  @override
  _AdaptiveTextFormInputState createState() => _AdaptiveTextFormInputState();
}

class _AdaptiveTextFormInputState extends State<AdaptiveTextFormInput>
    with
        SingleTickerProviderStateMixin<AdaptiveTextFormInput>,
        AutomaticKeepAliveClientMixin<AdaptiveTextFormInput> {
  late AnimationController controller;
  late Animation<double> offsetAnimation;
  late TextEditingController textEditingController;

  @override
  void dispose() {
    offsetAnimation.removeStatusListener(listener);
    textEditingController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    textEditingController = widget.controller ?? TextEditingController();

    controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    offsetAnimation = Tween(begin: 0.0, end: widget.cupertinoInputMargin)
        .chain(CurveTween(curve: Curves.elasticIn))
        .animate(controller)
      ..addStatusListener(listener);

    super.initState();
  }

  @override
  bool get wantKeepAlive => true;

  void listener(AnimationStatus status) {
    if (status == AnimationStatus.completed) controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    print(widget.autoFillHints);

    return PlatformBuilder(
      cupertino: (_) => AnimatedBuilder(
        animation: offsetAnimation,
        builder: (context, __) => Container(
          margin: EdgeInsets.symmetric(horizontal: widget.cupertinoInputMargin),
          padding: EdgeInsets.only(
            left: offsetAnimation.value + widget.cupertinoInputMargin,
            right: widget.cupertinoInputMargin - offsetAnimation.value,
          ),
          child: CupertinoTextField(
            maxLines: widget.minLines == null ? widget.maxLines : null,
            minLines: widget.minLines,
            expands: widget.minLines == null && widget.maxLines == null
                ? widget.expands
                : false,
            enableSuggestions: widget.enableSuggestions,
            obscureText: widget.obscureText,
            autofocus: widget.autoFocus,
            autocorrect: widget.autoCorrect,
            autofillHints: widget.autoFillHints,
            showCursor: widget.showCursor,
            keyboardType: widget.keyboardType,
            textCapitalization: widget.capitalization,
            clearButtonMode: OverlayVisibilityMode.editing,
            textInputAction: widget.next == null
                ? widget.action ?? TextInputAction.done
                : widget.action ?? TextInputAction.next,
            cursorColor: widget.cursorColor ??
                Helpers.foldTheme(
                  light: () => Palette.accentColor.shade800,
                  dark: () => Helpers.computeLuminance(
                    Theme.of(context).scaffoldBackgroundColor,
                  ),
                ),
            maxLengthEnforcement: widget.maxLengthEnforced
                ? MaxLengthEnforcement.enforced
                : MaxLengthEnforcement.none,
            controller: textEditingController,
            enableInteractiveSelection: true,
            focusNode: widget.focus,
            enabled: !widget.disabled,
            inputFormatters: [
              if (widget.maxLength != null)
                LengthLimitingTextInputFormatter(widget.maxLength),
              ...widget.inputFormatters,
            ],
            prefix: widget.prefix,
            prefixMode: widget.prefixMode,
            suffix: widget.suffix,
            suffixMode: widget.suffixMode,
            style: widget.style,
            padding: widget.padding ??
                const EdgeInsets.symmetric(
                  vertical: 13.0,
                  horizontal: 10.0,
                ),
            placeholder: widget.hintText,
            placeholderStyle: widget.hintStyle,
            toolbarOptions: widget.toolbarOptions,
            onChanged: (_) {
              // If validate == true && error exists in input field
              if (widget.validate && widget.errorText != null)
                controller.forward(from: 0.0);
              return widget.onChanged?.call(_);
            },
            onSubmitted: (_) => widget.next == null
                ? FocusScope.of(context).unfocus()
                : FocusScope.of(context).requestFocus(widget.next),
          ),
        ),
      ),
      material: (context) => TextFormField(
        maxLines: widget.minLines == null ? widget.maxLines : null,
        minLines: widget.minLines,
        expands: widget.minLines == null && widget.maxLines == null
            ? widget.expands
            : false,
        enableSuggestions: widget.enableSuggestions,
        enableInteractiveSelection: true,
        obscureText: widget.obscureText,
        autocorrect: widget.autoCorrect,
        autofocus: widget.autoFocus,
        initialValue: widget.initial,
        controller: textEditingController,
        showCursor: widget.showCursor,
        cursorColor: widget.cursorColor ??
            Helpers.foldTheme(
              light: () => Palette.accentColor.shade800,
              dark: () => Helpers.computeLuminance(
                Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
        keyboardType: widget.keyboardType,
        textCapitalization: widget.capitalization,
        textInputAction: widget.next == null
            ? widget.action ?? TextInputAction.done
            : widget.action ?? TextInputAction.next,
        focusNode: widget.focus,
        readOnly: widget.disabled,
        enabled: !widget.disabled,
        decoration: widget.decoration ??
            InputDecoration(
              hintText: widget.hintText,
              hintStyle: widget.hintStyle,
              labelText: widget.label,
              labelStyle: widget.labelStyle,
              border: widget.border,
              filled: widget.filled,
              contentPadding: widget.padding,
              focusedBorder: widget.focusBorder ?? widget.border,
              prefixIcon: widget.prefix,
              suffixIcon: widget.suffix,
              enabled: !widget.disabled,
            ),
        autofillHints: widget.autoFillHints,
        inputFormatters: [
          if (widget.maxLength != null)
            LengthLimitingTextInputFormatter(widget.maxLength),
          ...widget.inputFormatters,
        ],
        toolbarOptions: widget.toolbarOptions,
        style: widget.style,
        autovalidateMode: widget.validate
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        onChanged: widget.onChanged,
        validator: (value) => widget.errorText,
        onFieldSubmitted: (_) => widget.next == null
            ? FocusScope.of(context).unfocus()
            : FocusScope.of(context).requestFocus(widget.next),
      ),
    );
  }
}
