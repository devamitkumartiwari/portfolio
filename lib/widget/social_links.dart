import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/ThemeCubit.dart';
import 'package:portfolio/configs/configs.dart';
import 'package:portfolio/constants.dart';
import 'package:portfolio/responsive/responsive.dart';
import 'package:portfolio/utils/utils.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.watch<ThemeCubit>();

    return Wrap(
      runSpacing: AppDimensions.normalize(10),
      alignment: WrapAlignment.center,
      children: StaticUtils.socialIconURL
          .asMap()
          .entries
          .map(
            (e) => Padding(
              padding: ResponsiveApp.isMobile(context)
                  ? Space.all(0.2, 0)
                  : Space.h!,
              child: IconButton(
                highlightColor: Colors.white54,
                splashRadius: AppDimensions.normalize(12),
                icon: Image.network(
                  e.value,
                  color: themeCubit.state.themeMode == ThemeMode.dark
                      ? Colors.white
                      : Colors.black,
                  height: ResponsiveApp.isMobile(context)
                      ? AppDimensions.normalize(10)
                      : AppDimensions.normalize(12),
                ),
                iconSize: ResponsiveApp.isMobile(context)
                    ? AppDimensions.normalize(10)
                    : AppDimensions.normalize(15),
                onPressed: () => openURL(
                  StaticUtils.socialLinks[e.key],
                ),
                hoverColor: AppTheme.currentTheme!.primary!,
              ),
            ),
          )
          .toList(),
    );
  }
}
