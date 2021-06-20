import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:secureme/utils/utils.dart';
import 'package:secureme/widgets/widgets.dart';

class AdaptiveTextFormInput extends StatefulWidget {
  final int? maxLines;
  final int? minLines;
  final bool enableSuggestions;
  final bool autoCorrect;
  final bool autoFocus;
  final bool obscureText;
  final String? initial;
  final Color? cursorColor;
  final TextInputType keyboardType;
  final TextCapitalization capitalization;
  final TextInputAction? action;
  final InputDecoration? decoration;
  final Iterable<String>? autoFillHints;
  final bool validate;
  final bool showCursor;
  final int? maxLength;
  final bool maxLengthEnforced;
  final TextStyle? style;

  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  final List<TextInputFormatter> inputFormatters;
  final String? errorText;
  final void Function(String)? onChanged;
  final FocusNode? focus;
  final FocusNode? next;
  final ToolbarOptions? toolbarOptions;

  //
  final OverlayVisibilityMode prefixMode;
  final OverlayVisibilityMode suffixMode;
  //
  final bool? filled;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? label;
  final TextStyle? labelStyle;
  final InputBorder? border;
  final InputBorder? focusBorder;
  final EdgeInsetsGeometry? padding;

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
    this.autoFillHints,
    this.inputFormatters = const [],
    this.validate = false,
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
  }) : super(key: key);

  @override
  _AdaptiveTextFormInputState createState() => _AdaptiveTextFormInputState();
}

class _AdaptiveTextFormInputState extends State<AdaptiveTextFormInput>
    with AutomaticKeepAliveClientMixin<AdaptiveTextFormInput> {
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return PlatformBuilder(
      cupertino: (_) => CupertinoTextField(
        maxLines: widget.minLines == null ? widget.maxLines : null,
        minLines: widget.minLines,
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
              light: () => AppColors.accentColor.shade800,
              dark: () => Helpers.computeLuminance(
                Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
        maxLengthEnforcement: widget.maxLengthEnforced
            ? MaxLengthEnforcement.enforced
            : MaxLengthEnforcement.none,
        controller: widget.controller,
        enableInteractiveSelection: true,
        focusNode: widget.focus,
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
        onChanged: widget.onChanged,
      ),
      material: (_) => TextFormField(
        maxLines: widget.minLines == null ? widget.maxLines : null,
        minLines: widget.minLines,
        enableSuggestions: widget.enableSuggestions,
        enableInteractiveSelection: true,
        obscureText: widget.obscureText,
        autocorrect: widget.autoCorrect,
        autofocus: widget.autoFocus,
        initialValue: widget.initial,
        // maxLength: maxLength,
        maxLengthEnforcement: widget.maxLengthEnforced
            ? MaxLengthEnforcement.enforced
            : MaxLengthEnforcement.none,
        controller: widget.controller,
        showCursor: widget.showCursor,
        cursorColor: widget.cursorColor ??
            Helpers.foldTheme(
              light: () => AppColors.accentColor.shade800,
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

  @override
  bool get wantKeepAlive => true;
}
