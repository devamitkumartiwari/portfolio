import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/bloc/ThemeCubit.dart';
import 'package:portfolio/configs/configs.dart';

import '../utils/export.dart';

class ProjectCard extends StatefulWidget {
  final double? height;
  final double? width;
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    super.key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
    this.height,
    this.width,
  });
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.projectLink == null
          ? () {}
          : () => openURL(
                widget.projectLink!,
              ),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: Card(
        color: themeCubit.state.themeMode == ThemeMode.dark
            ? Colors.grey[900]
            : Colors.white,
        elevation: 1,
        borderOnForeground: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Container(
          margin: Space.h,
          padding: Space.all(),
          width: AppDimensions.normalize(100),
          height: AppDimensions.normalize(90),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.projectIcon != null
                      ? (width > 1135 || width < 950)
                          ? Image.asset(
                              widget.projectIcon!,
                              height: height * 0.05,
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  widget.projectIcon!,
                                  height: height * 0.03,
                                ),
                                SizedBox(
                                  width: width * 0.01,
                                ),
                                Text(
                                  widget.projectTitle,
                                  style: AppText.b2b,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                      : Container(),
                  widget.projectIconData != null
                      ? Icon(
                          widget.projectIconData,
                          color: AppTheme.currentTheme!.primary!,
                          size: height * 0.1,
                        )
                      : Container(),
                  (width > 1135 || width < 950)
                      ? SizedBox(
                          height: height * 0.02,
                        )
                      : const SizedBox(),
                  (width > 1135 || width < 950)
                      ? Text(
                          widget.projectTitle,
                          style: AppText.b2b,
                          textAlign: TextAlign.center,
                        )
                      : Container(),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text(
                    widget.projectDescription,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                ],
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isHover ? 0.0 : 1.0,
                child: FittedBox(
                  fit: BoxFit.fill,
                  child: widget.banner != null
                      ? Image.asset(
                          widget.banner!,
                        )
                      : Container(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
