import 'package:flutter/material.dart';
import 'package:zephyr_app/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case IconButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 2,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillOrange30001:
        return ColorConstant.orange30001;
      case IconButtonVariant.FillRed40063:
        return ColorConstant.red40063;
      case IconButtonVariant.FillIndigo80063:
        return ColorConstant.indigo80063;
      case IconButtonVariant.FillPink80063:
        return ColorConstant.pink80063;
      case IconButtonVariant.FillOrange3006c:
        return ColorConstant.orange3006c;
      case IconButtonVariant.FillRed4006c:
        return ColorConstant.red4006c;
      case IconButtonVariant.FillIndigo8006c:
        return ColorConstant.indigo8006c;
      case IconButtonVariant.FillPink8006c:
        return ColorConstant.pink8006c;
      case IconButtonVariant.FillGray80063:
        return ColorConstant.gray80063;
      case IconButtonVariant.FillOrange30063:
        return ColorConstant.orange30063;
      case IconButtonVariant.OutlineRed40063:
      case IconButtonVariant.OutlineGray80063:
        return null;
      default:
        return ColorConstant.orangeA20063;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineRed40063:
        return Border.all(
          color: ColorConstant.red40063,
          width: getHorizontalSize(
            3.00,
          ),
        );
      case IconButtonVariant.OutlineGray80063:
        return Border.all(
          color: ColorConstant.gray80063,
          width: getHorizontalSize(
            3.00,
          ),
        );
      case IconButtonVariant.FillOrangeA20063:
      case IconButtonVariant.FillOrange30001:
      case IconButtonVariant.FillRed40063:
      case IconButtonVariant.FillIndigo80063:
      case IconButtonVariant.FillPink80063:
      case IconButtonVariant.FillOrange3006c:
      case IconButtonVariant.FillRed4006c:
      case IconButtonVariant.FillIndigo8006c:
      case IconButtonVariant.FillPink8006c:
      case IconButtonVariant.FillGray80063:
      case IconButtonVariant.FillOrange30063:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      case IconButtonShape.CircleBorder19:
        return BorderRadius.circular(
          getHorizontalSize(
            19.00,
          ),
        );
      case IconButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder12,
  RoundedBorder6,
  CircleBorder19,
  CircleBorder16,
}

enum IconButtonPadding {
  PaddingAll2,
  PaddingAll5,
  PaddingAll9,
}

enum IconButtonVariant {
  FillOrangeA20063,
  FillOrange30001,
  FillRed40063,
  FillIndigo80063,
  FillPink80063,
  FillOrange3006c,
  FillRed4006c,
  FillIndigo8006c,
  FillPink8006c,
  FillGray80063,
  FillOrange30063,
  OutlineRed40063,
  OutlineGray80063,
}
