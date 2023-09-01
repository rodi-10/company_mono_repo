import 'package:app_button/const/app_colors.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton(this.btnLbl, this.btnIcon,
      {super.key, this.onClick, this.btnColor, this.isActive = true});
  String btnLbl;
  IconData btnIcon;
  Function? onClick;
  Color? btnColor;
  bool isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>((isActive)
                ? (btnColor ?? AppColors.kPrimary)
                : AppColors.kDisabled)),
        onPressed: () {
          if (onClick != null && isActive) {
            onClick!();
          }
        },
        icon: Icon(btnIcon,color: AppColors.kWhite,),
        label: Text(btnLbl,style: const TextStyle(color: AppColors.kWhite),));
  }
}
