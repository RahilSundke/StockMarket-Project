import 'package:flutter/material.dart';
import 'package:stock_market/core/utils/color_constant.dart';
import 'package:stock_market/core/utils/size_utils.dart';

class CustomFloatingEditText extends StatelessWidget {
  CustomFloatingEditText(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.textInputType = TextInputType.text,
      this.maxLines,
      this.labelText,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  FloatingEditTextShape? shape;

  FloatingEditTextPadding? padding;

  FloatingEditTextVariant? variant;

  FloatingEditTextFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? labelText;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildFloatingEditTextWidget(),
          )
        : _buildFloatingEditTextWidget();
  }

  _buildFloatingEditTextWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      labelText: labelText ?? "",
      labelStyle: _setFontStyle(),
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case FloatingEditTextFontStyle.DarkerGrotesqueMedium14:
        return TextStyle(
          color: ColorConstant.indigo50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Darker Grotesque',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.indigo50,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Darker Grotesque',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.36,
          ),
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case FloatingEditTextShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case FloatingEditTextVariant.FillGray900:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case FloatingEditTextVariant.None:
        return InputBorder.none;
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case FloatingEditTextVariant.FillGray900:
        return ColorConstant.gray900;
      default:
        return ColorConstant.gray900;
    }
  }

  _setFilled() {
    switch (variant) {
      case FloatingEditTextVariant.FillGray900:
        return true;
      case FloatingEditTextVariant.None:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case FloatingEditTextPadding.PaddingT27:
        return getPadding(
          left: 7,
          top: 27,
          right: 7,
          bottom: 7,
        );
      default:
        return getPadding(
          left: 7,
          top: 27,
          right: 7,
          bottom: 7,
        );
    }
  }
}

enum FloatingEditTextShape {
  RoundedBorder4,
}

enum FloatingEditTextPadding {
  PaddingT27,
}

enum FloatingEditTextVariant {
  None,
  FillGray900,
}

enum FloatingEditTextFontStyle {
  DarkerGrotesqueMedium14,
}
