import 'dart:ui';

import 'package:flutter/material.dart';

class ButtonGallery {
  static Widget glassMorphismButton({
    required Widget child,
    Function? onClick,
    required BuildContext context,
    double width = double.infinity,
    double blur = 0.2,
    double opacity = 0.5,
    Color backgroundColor = Colors.white,
    double radius = 20,
    double paddingX = 8.0,
    double paddingY = 10.0,
    double containerPadding = 8.0,
  }) {
    return GestureDetector(
      onTap: () => onClick?.call(),
      child: Padding(
        padding: EdgeInsets.all(containerPadding),
        child: SizedBox(
          width: width,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: blur,
                sigmaY: blur,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: paddingX,
                  vertical: paddingY,
                ),
                decoration: BoxDecoration(
                    color: backgroundColor.withOpacity(opacity),
                    borderRadius: BorderRadius.all(
                      Radius.circular(radius),
                    ),
                    border: Border.all(
                      width: 1.5,
                      color: backgroundColor.withOpacity(0.2),
                    )),
                child: child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
