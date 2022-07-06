import 'package:flutter/material.dart';
import 'package:gym_tracker/misc/colors.dart';
import 'package:gym_tracker/widgets/app_text.dart';

class ResponseButton extends StatelessWidget {
  const ResponseButton({Key? key, this.isResponsive = false, this.width = 120}) : super(key: key);

  final bool? isResponsive;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: isResponsive == true ? double.maxFinite : width,
        height: 60,
        padding: const EdgeInsets.only(right: 20, left: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.textColor1,
        ),
        child: Row(
          mainAxisAlignment: isResponsive == true ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
            children: [
              if (isResponsive == true)
                const AppText(
                  text: "Book Trip Now",
                  color: Colors.white,
                ),
              const Text(
                ">>>",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
        ),
      )
    );
  }
}