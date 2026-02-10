import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logo_app/config/constants/constants.dart';

class Logo extends StatelessWidget {
  final bool isLeftActive;
  final bool isRightActive;
  final VoidCallback? onTap;

  const Logo({
    super.key,
    this.isLeftActive = false,
    this.isRightActive = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: FittedBox(
        child: SizedBox(
          width: 43,
          height: 42,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: SvgPicture.asset(
                  isLeftActive ? leftLogoActivePath : leftLogoInactivePath,
                  width: 25.61,
                  height: 39.41,
                ),
              ),
              Positioned(
                top: 2.58,
                left: 17.34,
                child: SvgPicture.asset(
                  isRightActive ? rightLogoActivePath : rightLogoInactivePath,
                  width: 25.66,
                  height: 39.42,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
