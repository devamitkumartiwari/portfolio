import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/animations/entrance_fader.dart';
import 'package:portfolio/bloc/ThemeCubit.dart';
import 'package:portfolio/configs/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/configs/app_theme.dart';
import '../bloc/ScrollCubit.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({super.key});

  @override
  ArrowOnTopState createState() => ArrowOnTopState();
}

class ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();
    final scrollCubit = context.read<ScrollCubit>();

    return Positioned(
      bottom: AppDimensions.normalize(30),
      right: -7,
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.025),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () => scrollCubit.scroll(0),
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
                child: Container(
                  decoration: BoxDecoration(
                    color: themeCubit.state.themeMode == ThemeMode.dark
                        ? Colors.white
                        : Colors.black,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      bottomLeft: Radius.circular(8.0),
                    ),
                    boxShadow: isHover
                        ? [
                            const BoxShadow(
                              blurRadius: 12.0,
                              offset: Offset(2.0, 3.0),
                            )
                          ]
                        : [],
                  ),
                  child: Icon(
                    Icons.arrow_drop_up_outlined,
                    color: AppTheme.currentTheme!.primary!,
                    size: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
