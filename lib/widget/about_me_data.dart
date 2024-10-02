import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/configs/app_typography.dart';
import '../bloc/ThemeCubit.dart';

class AboutMeData extends StatelessWidget {
  final String data;
  final String information;
  final Alignment? alignment;

  const AboutMeData({
    super.key,
    required this.data,
    required this.information,
    this.alignment,
  });
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();

    return Align(
      alignment: alignment ?? Alignment.center,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "$data: ",
              style: AppText.l1b!.copyWith(
                color: themeCubit.state.themeMode == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            TextSpan(
              text: " $information\n",
              style: AppText.l1!.copyWith(
                color: themeCubit.state.themeMode == ThemeMode.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
